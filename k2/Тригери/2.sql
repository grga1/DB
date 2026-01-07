create trigger trg
after insert on Vakcinacija_datum
for each row 
 begin
 update Lice
 set vakcinalen_status = case when(
 select count ()
 from Vakcinacija_datum
 where id_lice = new.id_lice
 )=1 then 'primena prva doza'
  when(
 select count ()
 from Vakcinacija_datum
 where id_lice = new.id_lice
 )=2 then 'primeni dve dozi'
 else 'nema vakcina' end
 where id = new.id_lice;
 end
