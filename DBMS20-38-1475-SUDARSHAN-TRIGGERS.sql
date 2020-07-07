
--trigger1
CREATE FUNCTION public.trg_nopermissonforlicensedeletion()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$begin
   if(exists(select * from CAR_USER where license_no is not null )) then
         raise EXCEPTION 'You are not allowed to delete license No:';
    end if;
end;
$BODY$;

CREATE TRIGGER trg_nopermissonforlicensedeletion
	AFTER DELETE
	ON public.car_user
	FOR EACH ROW
	EXECUTE PROCEDURE public.trg_nopermissonforlicensedeletion();



--trigger2

CREATE FUNCTION public.trg_updatevin()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$  
begin
if(exists(select * from new,old where new.Reg_No=old.Reg_No and new.VIN!=old.VIN)) then
  RAISE EXCEPTION 'VIN can not be change.';
 end if;

end;
$BODY$;




CREATE TRIGGER trg_updatevin
	AFTER UPDATE
	ON public.car
	FOR EACH ROW
	EXECUTE PROCEDURE public.trg_updatevin();


