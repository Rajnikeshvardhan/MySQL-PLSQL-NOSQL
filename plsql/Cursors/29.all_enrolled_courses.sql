delimiter //
drop procedure if exists all_enrolled_courses//
create procedure all_enrolled_courses()
begin
     declare done int default 0;
     declare stud varchar(30);
     declare course varchar(30);
     declare dept varchar(30);
     declare cur cursor for select name,s.department,course_name from students s,courses c , enrollments e  where s.student_id=e.student_id and c.course_id=e.course_id;
	 declare continue handler for not found set done=1;
     drop table if exists temp;
     create temporary table temp(stud varchar(30),dept varchar(30),course varchar(30));
    open cur;
    hi:loop
           fetch cur into stud,course,dept;
           if done=1 then leave hi;end if;
           insert into temp values(stud,course,dept);
    end loop hi;       
    select * from temp;
end	//
delimiter ;
call all_enrolled_courses();