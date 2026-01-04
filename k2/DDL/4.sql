CREATE TABLE Korisnik(
 kor_ime TEXT PRIMARY KEY,
 ime TEXT,
 prezime TEXT,
 pol TEXT,
 data_rag TEXT,
 data_reg TEXT);
 
CREATE TABLE Korisnik_email(
 kor_ime TEXT ,
 email TEXT,
  check (Length(email)>=10 and email like '%.com'),
 PRIMARY KEY(kor_ime,email),
 FOREIGN KEY (kor_ime) REFERENCES Korisnik(kor_ime)
 ON DELETE CASCADE
 ON UPDATE CASCADE 
);


CREATE TABLE Poseta(
 id TEXT PRIMARY KEY, 
 kor_ime TEXT,
 id_mesto TEXT,
 datum TEXT,
 check(datum < '2025-12-20'),
 FOREIGN KEY (kor_ime) REFERENCES Korisnik(kor_ime)
 ON DELETE SET NULL
 ON UPDATE CASCADE,
 FOREIGN KEY (id_mesto) REFERENCES Mesto(id)
 ON DELETE CASCADE
 ON UPDATE CASCADE 
 );
 
