create trigger trg
after insert on Poseta
for each row
begin
 Update Korisnik
 set broj_poseti = (
  select count(distinct kor_ime)
  from Poseta
  where kor_ime = new.kor_ime
 )
 where kor_ime = new.kor_ime;
end 
