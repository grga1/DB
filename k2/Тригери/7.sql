create trigger trg
after insert on Preporaka
for each row
begin
 update Video_zapis
 set prosechna_ocena = (
 select avg(ocena)
 from Preporaka
 where naslov = new.naslov
 )
 where naslov = new.naslov;
 end
