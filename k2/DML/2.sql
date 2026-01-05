SELECT DISTINCT m.ime,m.prezime
FROM Muzicar m
join Muzicar_instrument mi on mi.id_muzicar=m.id
join Koncert_muzicar_bend kmb on kmb.id_muzicar=m.id
join Koncert k on k.id=kmb.id_koncert
join Muzicar_bend mb on mb.id_muzicar = kmb.id_muzicar and mb.id_bend=kmb.id_bend
WHERE mi.instrument='gitara' and mb.datum_napustanje < k.datum
ORDER BY m.ime ASC
