CREATE TABLE Vraboten(
 ID TEXT PRIMARY KEY, 
 ime TEXT, 
 prezime TEXT,
 datum_r TEXT,
 datum_v TEXT,
 obrazovanie TEXT,
 plata TEXT,
 CHECK (datum_r<datum_v)
 );
 
CREATE TABLE Shalterski_rabotnik(
 ID TEXT PRIMARY KEY,
 FOREIGN KEY (ID) REFERENCES Vraboten(ID) 
 ON DELETE CASCADE
 ON UPDATE CASCADE
 );
 
CREATE TABLE Transakcija_shalter(
 ID TEXT PRIMARY KEY,
 ID_v TEXT,
 MBR_k TEXT,
 MBR_k_s TEXT,
 broj NUMBER,
 datum TEXT,
 suma NUMBER,
 tip TEXT,
 FOREIGN KEY (ID_v) REFERENCES Shalterski_rabotnik (ID) 
 ON DELETE SET NULL
 ON UPDATE CASCADE,
 FOREIGN KEY (MBR_k) REFERENCES Klient(MBR_k)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 FOREIGN KEY(MBR_k_s,broj) REFERENCES Smetka(MBR_k_s,broj)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 CHECK (tip IN('uplata','isplata')),
 check (datum < '2020-12-30' OR datum > '2021-01-14')
 );
