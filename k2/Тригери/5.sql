create trigger trg
after insert on Poseta
for each row
begin
 Update Mesto
 set broj_poseti = (
  select count(distinct kor_ime)
  from Poseta
  where id_mesto = new.id_mesto
 )
 where id = new.id_mesto;
end 
