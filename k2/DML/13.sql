select  f.ime,n.cena,n.kapacitet,count(distinct fo.datum_od) broj_odrzuvanja,count(distinct fb.id_bend) broj_bendovi
from Nastan n
join Festival f on f.id=n.id
join Festival_odrzuvanje fo on fo.id=n.id
join Festival_bend fb on fb.id_festival=fo.id
group by f.id
