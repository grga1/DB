with gradovi as(
select *, count(*) as brojac
from Poseta p
join Objekt o on o.id_mesto=p.id_mesto
join Mesto m on m.id = o.id_grad
group by m.ime
 ),
 maxbrojac as(
 select g.ime ime,max(g.brojac) maks
 from gradovi g)
 select ime from maxbrojac
