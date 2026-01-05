SELECT DISTINCT k.k_ime, p.naslov
FROM Korisnik k
JOIN Premium_korisnik pk 
     ON pk.k_ime = k.k_ime

JOIN Preporaka p 
     ON p.k_ime_na = k.k_ime

JOIN Lista_zelbi lz 
     ON lz.naslov = p.naslov 
    AND lz.k_ime = k.k_ime

JOIN Profil pr
     ON pr.k_ime = k.k_ime
    AND pr.ime = lz.ime

WHERE p.ocena > 3
  AND p.datum  like '2021%'

ORDER BY k.k_ime ASC;
