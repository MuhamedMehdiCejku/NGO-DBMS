CREATE DATABASE IF NOT EXISTS ojq_db;
USE ojq_db;

-- 1) OJQ
CREATE TABLE OJQ (
  ojq_id INT PRIMARY KEY,
  emri VARCHAR(100) NOT NULL,
  shteti VARCHAR(50) NOT NULL,
  qyteti VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefoni VARCHAR(30)
);

-- 2) Departamenti
CREATE TABLE Departamenti (
  departament_id INT PRIMARY KEY,
  emri VARCHAR(80) NOT NULL,
  ojq_id INT NOT NULL,
  FOREIGN KEY (ojq_id) REFERENCES OJQ(ojq_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 3) Punetori
CREATE TABLE Punetori (
  punetori_id INT PRIMARY KEY,
  emri VARCHAR(100) NOT NULL,
  pozita VARCHAR(60) NOT NULL,
  paga DECIMAL(10,2) DEFAULT 0,
  email VARCHAR(100) UNIQUE,
  telefoni VARCHAR(30),
  departament_id INT NOT NULL,
  FOREIGN KEY (departament_id) REFERENCES Departamenti(departament_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 4) Projekti
CREATE TABLE Projekti (
  projekt_id INT PRIMARY KEY,
  emri VARCHAR(120) NOT NULL,
  data_fillimit DATE NOT NULL,
  data_mbarimit DATE,
  buxheti DECIMAL(12,2) NOT NULL,
  gjendja VARCHAR(20) NOT NULL,
  ojq_id INT NOT NULL,
  FOREIGN KEY (ojq_id) REFERENCES OJQ(ojq_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 5) Donatori
CREATE TABLE Donatori (
  donatori_id INT PRIMARY KEY,
  emri VARCHAR(120) NOT NULL,
  lloji VARCHAR(30) NOT NULL,   -- Individual / Kompani / Institucion / Grup
  shteti VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  telefoni VARCHAR(30)
);

-- 6) Donacioni
CREATE TABLE Donacioni (
  donacioni_id INT PRIMARY KEY,
  shuma DECIMAL(12,2) NOT NULL,
  data DATE NOT NULL,
  menyra VARCHAR(20) NOT NULL,  -- Banke / Cash / Online
  donatori_id INT NOT NULL,
  projekt_id INT NOT NULL,
  FOREIGN KEY (donatori_id) REFERENCES Donatori(donatori_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  FOREIGN KEY (projekt_id) REFERENCES Projekti(projekt_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 7) Aktiviteti
CREATE TABLE Aktiviteti (
  aktiviteti_id INT PRIMARY KEY,
  titulli VARCHAR(150) NOT NULL,
  data DATE NOT NULL,
  vendndodhja VARCHAR(100) NOT NULL,
  projekt_id INT NOT NULL,
  FOREIGN KEY (projekt_id) REFERENCES Projekti(projekt_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 8) Vullnetari
CREATE TABLE Vullnetari (
  vullnetari_id INT PRIMARY KEY,
  emri VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefoni VARCHAR(30),
  shkathtesite VARCHAR(80)
);

-- 9) Vullnetari_Aktiviteti (N:M)
CREATE TABLE Vullnetari_Aktiviteti (
  vullnetari_id INT NOT NULL,
  aktiviteti_id INT NOT NULL,
  vijueshmeria VARCHAR(20) NOT NULL,  -- I_Pranishem / I_Regjistruar / Nuk_U_Paraqit
  PRIMARY KEY (vullnetari_id, aktiviteti_id),
  FOREIGN KEY (vullnetari_id) REFERENCES Vullnetari(vullnetari_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  FOREIGN KEY (aktiviteti_id) REFERENCES Aktiviteti(aktiviteti_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- 10) Perfituesi (Perfitimet)
CREATE TABLE Perfituesi (
  perfituesi_id INT PRIMARY KEY,
  emri VARCHAR(100) NOT NULL,
  kategoria VARCHAR(30) NOT NULL,   -- Femije / Grua / I_Moshuar / Familje / Tjeter
  qyteti VARCHAR(50) NOT NULL,
  projekt_id INT NOT NULL,
  FOREIGN KEY (projekt_id) REFERENCES Projekti(projekt_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- 11) Punetori_Projekti (N:M)
CREATE TABLE Punetori_Projekti (
  punetori_id INT NOT NULL,
  projekt_id INT NOT NULL,
  pozita_ne_projekt VARCHAR(60) NOT NULL,
  oret_javore INT NOT NULL,
  PRIMARY KEY (punetori_id, projekt_id),
  FOREIGN KEY (punetori_id) REFERENCES Punetori(punetori_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  FOREIGN KEY (projekt_id) REFERENCES Projekti(projekt_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Shteti (
   emri_shtetit VARCHAR(50) PRIMARY KEY,
   kodi_shtetit VARCHAR(10) UNIQUE NOT NULL
);