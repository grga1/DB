SELECT DISTINCT k.ime,k.prezime
from Poseta p1
join Poseta p2 on p2.kor_ime=p1.kor_ime and p2.datum=p1.datum
join Objekt o1 on o1.id_mesto=p1.id_mesto
join Objekt o2 on o2.id_mesto=p2.id_mesto
join Korisnik k on k.kor_ime = p1.kor_ime
join Sosedi s on s.grad1=o1.id_grad and s.grad2=o2.id_grad
WHERE p1.id_mesto <> p2.id_mesto;

