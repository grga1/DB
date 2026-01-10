CREATE TRIGGER trg_azuriraj_brojaci
AFTER INSERT ON Izlozeni
FOR EACH ROW
BEGIN
    UPDATE Umetnicko_delo
    SET 
       -- Пресметај колку пати е изложено на ОТВОРЕНО
       br_izlozbi_otvoreno = (
           SELECT COUNT(*)
           FROM Izlozeni z
           JOIN Izlozba i ON z.ime_i = i.ime_i
           JOIN Muzej m ON i.shifra_muzej = m.shifra
           WHERE z.shifra_d = NEW.shifra_d AND m.tip = 'otvoreno'
       ),
       -- Пресметај колку пати е изложено на ЗАТВОРЕНО
       br_izlozbi_zatvoreno = (
           SELECT COUNT(*)
           FROM Izlozeni z
           JOIN Izlozba i ON z.ime_i = i.ime_i
           JOIN Muzej m ON i.shifra_muzej = m.shifra
           WHERE z.shifra_d = NEW.shifra_d AND m.tip = 'zatvoreno'
       )
    WHERE shifra = NEW.shifra_d;
END;
