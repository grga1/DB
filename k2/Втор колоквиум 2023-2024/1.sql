create table Muzej(
shifra text primary key,
ime_muzej text, 
opis text,
grad text, 
tip text,
rabotno_vreme text,
CHECK (not tip='otvoreno' or shifra like 'o%')

check(tip in('otvoreno','zatvoreno'))
);

create table Umetnicko_delo(
shifra text primary key,
ime text,
godina text,
umetnik text
);

create table Izlozeni(
shifra_d text,
ime_i text,
datum_pocetok text,
datum_kraj text,
primary key(shifra_d,ime_i),
foreign key (ime_i) references Izlozba_UD(ime_i) 
on delete cascade
on update cascade,
foreign key(shifra_d) references Umetnicko_delo (shifra)
on delete cascade

on update cascade
);
