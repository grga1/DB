with pom as(
select *,count(*) as brojac 
from Ucestvuva u
where u.krajna_p=1
group by u.ime_trka,u.vozacki_broj)


SELECT p.ime_trka race, p.vozacki_broj driver
FROM pom p
WHERE p.brojac = (
    SELECT MAX(p2.brojac)
    FROM pom p2
    WHERE p2.ime_trka = p.ime_trka
);
