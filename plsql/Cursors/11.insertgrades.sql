delimiter //
create procedure insertgrades()
begin
     declare done int default 0;
     declare sid int;
     declare cid int;
     declare cur cursor for select distinct student_id ,course_id from marks;
     declare continue handler for not found set done =1 ;
     open cur;
     hi : loop
      fetch cur into sid,cid;
      if done =1 then leave hi; end if;
      insert into grades values (sid,cid,null);
      end loop hi;
end//
delimiter //
call insertgrades();