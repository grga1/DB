select distinct ud.ime,ud.umetnik
from Umetnicko_delo ud
join Izlozeni i on i.shifra_d=ud.shifra
join Izlozba_UD iud on iud.ime_i=i.ime_i
join Izlozba izlozba on izlozba.ime_i=iud.ime_i
where i.datum_pocetok=izlozba.datum_od and i.datum_kraj=izlozba.datum_do
