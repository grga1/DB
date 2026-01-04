CREATE TABLE Test(
 id INT,
 shifra INT,
 tip TEXT,
 datum TEXT, 
 rezultat TEXT,
 laboratorija TEXT,
 PRIMARY KEY(id,shifra),
 FOREIGN KEY (id) REFERENCES Lice(id)
 ON DELETE CASCADE
 ON UPDATE CASCADE,
 check (laboratorija <> 'lab-abc' or  tip = 'seroloshki')
 );
 CREATE TABLE Vakcinacija(
 id_lice INT,
 id_med_lice INT,
 shifra_vakcina INT,
 PRIMARY KEY(id_lice,id_med_lice,shifra_vakcina),
 FOREIGN KEY (id_lice) REFERENCES Lice(id)
 ON UPDATE CASCADE
 ON DELETE SET DEFAULT,
 FOREIGN KEY (id_med_lice) REFERENCES Med_lice(id)
 ON UPDATE CASCADE
 ON DELETE SET DEFAULT,
 FOREIGN KEY (shifra_vakcina) REFERENCES  Vakcina(shifra)
 ON UPDATE CASCADE
 ON DELETE SET DEFAULT,
 check (id_lice <> id_med_lice)

 );
 
CREATE TABLE Vakcinacija_datum(
 id_lice INT, 
 id_med_lice INT,
 shifra_vakcina INT,
 datum TEXT ,
 primary key(id_lice,id_med_lice,shifra_vakcina,datum),
 FOREIGN KEY (id_lice,id_med_lice,shifra_vakcina) REFERENCES Vakcinacija(id_lice, id_med_lice, shifra_vakcina)
 ON UPDATE CASCADE
 ON DELETE SET NULL
 
 );
