CREATE TABLE Bend(
 id TEXT PRIMARY KEY,
 ime TEXT,
 godina_osnovanje INT
 CHECK (godina_osnovanje>=1970)
 );
CREATE TABLE Bend_zanr(
 id_bend,
 zanr,
 PRIMARY KEY(id_bend,zanr),
 FOREIGN KEY (id_bend) REFERENCES Bend(id)
 ON DELETE CASCADE
 ON UPDATE CASCADE
 );
 CREATE TABLE Festival_bend(
 id_festival TEXT,
 datum_od TEXT,
 id_bend TEXT,
  CHECK(NOT(id_bend='5' AND id_festival='2')),
 PRIMARY KEY (id_festival,datum_od,id_bend),
 FOREIGN KEY (id_festival,datum_od) REFERENCES Festival_odrzuvanje(id,datum_od)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 FOREIGN KEY (id_bend) REFERENCES Bend(id)
 ON DELETE SET DEFAULT
 ON UPDATE CASCADE
 );
