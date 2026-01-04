CREATE TABLE Trka(
  ime TEXT PRIMARY KEY,
  krugovi INT,
  pateka TEXT,
  FOREIGN KEY (pateka) REFERENCES Pateka(ime)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CHECK (krugovi <= 80)
);

CREATE TABLE Odrzana_trka(
  ime TEXT,
  datum TEXT,
  vreme TEXT,
  PRIMARY KEY (ime, datum),
  FOREIGN KEY (ime) REFERENCES Trka(ime)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Ucestvuva(
  ID TEXT PRIMARY KEY,
  vozacki_broj TEXT,         
  ime_tim TEXT,
  ime_trka TEXT,
  datum_trka TEXT,
  pocetna_p INT,
  krajna_p INT,
  poeni FLOAT ,

 CHECK ((krajna_p <= 10 AND poeni > 0) OR (krajna_p > 10 AND poeni = 0)),

  FOREIGN KEY (vozacki_broj) REFERENCES Vozac(vozacki_broj)
    ON UPDATE CASCADE
    ON DELETE SET NULL,

  FOREIGN KEY (ime_tim) REFERENCES Tim(ime)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

  FOREIGN KEY (ime_trka, datum_trka) REFERENCES Odrzana_trka(ime, datum)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
