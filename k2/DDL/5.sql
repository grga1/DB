CREATE TABLE Video_zapis(
 naslov TEXT PRIMARY KEY, 
 jazik TEXT,
 vremetraenje INT,
 datum_d TEXT, 
 datum_p TEXT);

CREATE TABLE Video_zapis_zanr(
 naslov TEXT,
 zanr TEXT,
 PRIMARY KEY(naslov,zanr),
 FOREIGN KEY (naslov) REFERENCES Video_zapis(naslov)
 ON UPDATE CASCADE
 ON DELETE CASCADE
 );
 
CREATE TABLE Preporaka(
 ID TEXT PRIMARY KEY,
 k_ime_od TEXT,
 k_ime_na TEXT,
 naslov TEXT,
 datum TEXT,
 komentar TEXT,
 ocena INT,
 FOREIGN KEY (k_ime_na) REFERENCES Korisnik(k_ime) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE,
 FOREIGN KEY (k_ime_od) REFERENCES Korisnik(k_ime) 
 ON UPDATE CASCADE 
 ON DELETE SET NULL,
 FOREIGN KEY (naslov) REFERENCES Video_zapis(naslov) 
 ON UPDATE CASCADE 
 ON DELETE CASCADE
 CHECK (k_ime_od<>k_ime_na AND k_ime_na<>k_ime_od)
 CHECK (datum <='2025-12-19')
 );
