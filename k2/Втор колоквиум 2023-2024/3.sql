with zatvorenoUmetnici as(select distinct ud.umetnik
from Muzej m
join Izlozba i on i.shifra_muzej = m.shifra
join Izlozba_UD iud on iud.ime_i=i.ime_i
join Izlozeni izl on izl.ime_i=iud.ime_i
join Umetnicko_delo ud on ud.shifra=izl.shifra_d
where m.tip=='zatvoreno'
),
 siteUmetnici as(
select distinct ud.umetnik
from Umetnicko_delo ud
)
select distinct su.umetnik 
from siteUmetnici su
left join zatvorenoUmetnici zu on su.umetnik=zu.umetnik
where zu.umetnik is null
order by su.umetnik asc
