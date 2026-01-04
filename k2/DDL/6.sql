CREATE TABLE Korisnik(
 k_ime TEXT PRIMARY KEY,
 ime TEXT,
 prezime TEXT,
 tip TEXT,
 pretplata TEXT,
 datum_reg TEXT,
 tel_broj INT,
 email TEXT,
 CHECK (datum_reg >= '2015-01-01' OR pretplata <> 'pretplata 3')
 );
 
CREATE TABLE Premium_korisnik(
 k_ime TEXT PRIMARY KEY,
 datum TEXT,
 procent_popust INT DEFAULT 10,
 FOREIGN KEY (k_ime) REFERENCES Korisnik(k_ime)
 ON UPDATE CASCADE
 ON DELETE CASCADE
 );

CREATE TABLE Lista_zelbi(
 ID TEXT PRIMARY KEY,
 naslov TEXT,
 k_ime TEXT,
 ime TEXT,
 FOREIGN KEY (naslov) REFERENCES Video_zapis(naslov)
 ON UPDATE CASCADE
 ON DELETE SET NULL,
 FOREIGN KEY (k_ime,ime) REFERENCES Profil(k_ime,ime)
 ON UPDATE CASCADE
 ON DELETE CASCADE
 );
