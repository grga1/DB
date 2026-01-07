create trigger trg1
after delete on Grad
for each row
begin
 update Sosedi
 set grad1=null
 where grad1 = old.id_mesto;
 update Sosedi
 set grad2=null
 where grad2=old.id_mesto;
 end;
 
create trigger trg2
after delete on Korisnik
for each row
begin 
  delete from Poseta
  where kor_ime=old.kor_ime;
end
