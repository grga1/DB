SELECT DISTINCT k.ime,k.prezime
FROM Korisnik k
JOIN Premium_korisnik pk ON pk.k_ime = k.k_ime
JOIN  Preporaka p ON p.k_ime_od = k.k_ime
JOIN Video_zapis vz ON vz.naslov = p.naslov
WHERE p.ocena>=4  AND vz.vremetraenje>120
ORDER BY k.datum_reg ASC
