delimiter //
drop procedure if exists admitted//
create procedure admitted(in year int)
begin 
declare done int default 0;
declare year_temp int;
declare sid int;
declare cur cursor for select student_id,admission_year from students where admission_year=year;
declare continue handler for not found set done = 1;
drop table if exists temp;
create temporary table temp (sid int,year_temp int);
open cur;
         hi:loop 
         fetch cur into sid,year_temp;
         if done = 1 then leave hi;  end if;
         insert into temp values (sid,year_temp);
         end loop hi;
         select * from temp;
end//
delimiter ;
call admitted(2022);