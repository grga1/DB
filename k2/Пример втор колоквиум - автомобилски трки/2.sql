select  distinct u.vozacki_broj,v.ime,v.prezime,v.nacionalnost,v.datum_r
from Vozac v
join Ucestvuva u on u.vozacki_broj = v.vozacki_broj
join Trka t on t.ime=u.ime_trka
where t.krugovi<70 and u.datum_trka like '2023%' and  u.poeni>0
order by v.datum_r desc
