delimiter //
drop procedure if exists updategrades//
create procedure updategrades()
begin
     declare done int default 0;
     declare sid int;
     declare cid int;
     declare mark int;
     declare cur cursor for select  student_id ,course_id,marks_obtained from marks;
     declare continue handler for not found set done =1 ;
     open cur;
     hi : loop
      fetch cur into sid,cid,mark;
      
          if mark>=90 then
            update grades set grade='A' where student_id =sid and course_id=cid;
		  elseif mark>=70 then
            update grades set grade='B' where student_id =sid and course_id=cid;
		  elseif mark>=50 then
            update grades set grade='c' where student_id =sid and course_id=cid;
		  elseif mark<50 then
            update grades set grade='Fail' where student_id =sid and course_id=cid;
		  else select 'error occured';
          end if;
		if done =1 then leave hi; end if;
      
      end loop hi;
end//
delimiter //
call updategrades();