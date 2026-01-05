select distinct k.ime,k.prezime
from Korisnik k 
join Poseta p1 on p1.kor_ime=k.kor_ime
join Poseta p2 on p2.kor_ime=k.kor_ime
join Objekt o1 on o1.id_mesto = p1.id_mesto
join Objekt o2 on o2.id_mesto= p2.id_mesto
join Sosedi s on s.grad1=o1.id_grad and s.grad2=o2.id_grad
where s.grad1<>s.grad2 and s.rastojanie<300
