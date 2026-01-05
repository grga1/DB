SELECT DISTINCT l.id 
FROM Lice l 
JOIN Test t on t.id = l.id
join Vakcinacija_datum vd  on vd.id_lice = l.id
where t.rezultat = 'pozitiven' and t.datum<vd.datum
ORDER BY l.id ASC
