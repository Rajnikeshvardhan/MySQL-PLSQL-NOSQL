delimiter //
drop procedure if exists fetch_cs//
create procedure fetch_cs()
begin 
declare done int default 0;
declare coursename varchar(20);
declare cur cursor for select course_name from courses where department = 'Computer Science';
declare continue handler for not found set done = 1;
drop table if exists temp;
create temporary table temp (course_name varchar(20));
open cur;
         hi:loop 
         fetch cur into coursename ;
         if done = 1 then leave hi;  end if;
         insert into temp values (coursename);
         end loop hi;
         select * from temp;
end//
delimiter ;
call fetch_cs();