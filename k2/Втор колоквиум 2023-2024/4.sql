with muzejIzlozbi as(select distinct m.ime_muzej,count(*) brojac
from Muzej m
join Izlozba i on i.shifra_muzej = m.shifra
join Izlozba_UD iud on iud.ime_i=i.ime_i
join Izlozeni izl on izl.ime_i=iud.ime_i
join Umetnicko_delo ud on ud.shifra=izl.shifra_d
where izl.datum_pocetok like '2023%'
group by m.ime_muzej)

SELECT mi.ime_muzej
FROM muzejIzlozbi mi
WHERE mi.brojac = (SELECT MAX(brojac) FROM muzejIzlozbi)
