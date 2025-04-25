delimiter //
drop procedure if exists duplicate_stud//
create procedure duplicate_stud()
begin
     declare done int default 0;
     declare stud varchar(30);
     declare count_duplicates int default 0;
     declare cur cursor for select student_id from enrollments group by student_id having count(*)>=2;
	 declare continue handler for not found set done=1;
     
    open cur;
    hi:loop
           fetch cur into stud;
           if done=1 then leave hi;end if;
           select stud as stud_duplicate;
           set count_duplicates =1;
    end loop hi; 
    close cur;
    if count_duplicates = 0 then select 'duplicate not found' as message; end if;
end	//
delimiter ;
call duplicate_stud();