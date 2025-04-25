delimiter //
drop procedure if exists enroll//
create procedure enroll()
begin 
declare done int default 0;
declare coursename varchar(20);
declare sid int;
declare cur cursor for select e.student_id,c.course_name from enrollments e , courses c where e.course_id=c.course_id;
declare continue handler for not found set done = 1;
drop table if exists temp;
create temporary table temp (sid int, course_name varchar(20));
open cur;
		hi:loop 
              fetch cur into sid,coursename ;
			  if done = 1 then leave hi;  end if;
              insert into temp values (sid,coursename);
		end loop hi;
		select * from temp;
end//
delimiter ;
call enroll();