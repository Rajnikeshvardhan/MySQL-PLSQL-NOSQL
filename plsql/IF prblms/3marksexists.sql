SELECT * FROM plsqlprblms.marks;
delimiter //
create procedure exist(in sid int,in cid int)
begin 
 declare y int;
 select marks_obtained into y from marks where course_id=cid and student_id=sid;
if  isnull(y) then select sid,cid, 'no marks' as exist ;
  else select y;
  end if;
end //
delimiter ;
 call exist(2,102);