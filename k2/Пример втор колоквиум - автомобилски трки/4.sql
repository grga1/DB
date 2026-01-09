create trigger trg
after delete on Vozac
for each row
begin
Update Ucestvuva
set vozacki_broj=null
where vozacki_broj=old.vozacki_broj;
end;

create trigger trg2
after delete on Tim
for each row
begin
delete from Ucestvuva
where ime_tim=old.ime;
end
