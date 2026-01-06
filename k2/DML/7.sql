WITH pozitivni_lica AS(
SELECT DISTINCT l.id 
FROM Lice l
JOIN Test t ON t.id = l.id
WHERE t.rezultat = 'pozitiven' and t.datum>='2021-08-01' and t.datum <'2021-09-01'
),
vakcinacii_po_lice AS(
SELECT pl.id,COUNT (vd.datum) AS broj_dozi
FROM pozitivni_lica pl
LEFT JOIN  Vakcinacija_datum vd ON pl.id = vd.id_lice
GROUP BY pl.id
)
 SUM(CASE WHEN broj_dozi<2 THEN 1 ELSE 0 END)*100.0/COUNT(*) AS  procent FROM vakcinacii_po_lice;
