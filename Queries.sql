-- Query 1.	Shfaq projektet aktive të një OJQ-je (p.sh. “Organizata Humanitare per Arsim”).
SELECT p.projekt_id, p.emri, p.buxheti, p.data_fillimit, p.data_mbarimit
FROM Projekti p
JOIN OJQ o ON p.ojq_id = o.ojq_id
WHERE o.emri = 'Organizata Humanitare per Arsim'
  AND p.gjendja = 'Aktiv';

-- Query 2.	Totali i donacioneve për çdo projekt (raport financiar).
SELECT p.emri AS Projekti, SUM(d.shuma) AS Totali_Donacioneve
FROM Projekti p
LEFT JOIN Donacioni d ON p.projekt_id = d.projekt_id
GROUP BY p.projekt_id, p.emri
ORDER BY Totali_Donacioneve DESC;

-- Query 3.	Projektet ku donacionet janë më të vogla se buxheti (hendek financiar).
SELECT p.emri, p.buxheti,
       IFNULL(SUM(d.shuma),0) AS Totali_Donacioneve,
       (p.buxheti - IFNULL(SUM(d.shuma),0)) AS Hendeku_Financiar
FROM Projekti p
LEFT JOIN Donacioni d ON p.projekt_id = d.projekt_id
GROUP BY p.projekt_id, p.emri, p.buxheti
HAVING IFNULL(SUM(d.shuma),0) < p.buxheti
ORDER BY Hendeku_Financiar DESC;

-- Query 4. Donatori që ka dhuruar shumën më të madhe.
SELECT dn.emri, dn.lloji, d.shuma
FROM Donatori dn
JOIN Donacioni d ON dn.donatori_id = d.donatori_id
WHERE d.shuma = (SELECT MAX(shuma) FROM Donacioni);

-- Query 5. Donatorët me total donacionesh mbi 10,000.
SELECT dn.emri, SUM(d.shuma) AS Totali
FROM Donatori dn
JOIN Donacioni d ON dn.donatori_id = d.donatori_id
GROUP BY dn.donatori_id, dn.emri
HAVING SUM(d.shuma) > 10000
ORDER BY Totali DESC;
 
-- Query 6.	Aktivitetet e projektit “Aktivitete Sportive” me vendndodhje.
SELECT a.titulli, a.data, a.vendndodhja
FROM Aktiviteti a
JOIN Projekti p ON a.projekt_id = p.projekt_id
WHERE p.emri = 'Aktivitete Sportive'
ORDER BY a.data;

-- Query 7.	Numri i vullnetarëve për secilin aktivitet.
SELECT a.titulli, COUNT(va.vullnetari_id) AS Nr_Vullnetareve
FROM Aktiviteti a
LEFT JOIN Vullnetari_Aktiviteti va
  ON a.aktiviteti_id = va.aktiviteti_id
GROUP BY a.aktiviteti_id, a.titulli
ORDER BY Nr_Vullnetareve DESC;

-- Query 8.	Vullnetarët që kanë marrë pjesë në më shumë se një aktivitet.
SELECT v.emri, COUNT(*) AS Nr_Aktiviteteve
FROM Vullnetari v
JOIN Vullnetari_Aktiviteti va
  ON v.vullnetari_id = va.vullnetari_id
WHERE va.vijueshmeria = 'I_Pranishem'
GROUP BY v.vullnetari_id, v.emri
HAVING COUNT(*) = 1;

-- Query 9.	Punëtorët e angazhuar në projekte me më shumë se 10 orë/javë.
SELECT pu.emri, pr.emri AS Projekti,
       pp.pozita_ne_projekt, pp.oret_javore
FROM Punetori_Projekti pp
JOIN Punetori pu ON pp.punetori_id = pu.punetori_id
JOIN Projekti pr ON pp.projekt_id = pr.projekt_id
WHERE pp.oret_javore > 10
ORDER BY pp.oret_javore DESC;

-- Query 10. Projektet që nuk kanë asnjë donacion.
SELECT p.projekt_id, p.emri
FROM Projekti p
LEFT JOIN Donacioni d ON p.projekt_id = d.projekt_id
WHERE d.donacioni_id IS NULL;