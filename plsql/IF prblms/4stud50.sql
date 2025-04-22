SELECT * FROM plsqlprblms.marks;
delimiter //
create procedure alert(in sid int,in cid int)
begin 
 declare y int;
 select marks_obtained into y from marks where course_id=cid and student_id=sid;
if  isnull(y) then select sid,cid, 'no marks' as exist ;
elseif y<50 then select sid,cid,y as marks_obtained, 'alert';
  else select y;
  end if;
end //
delimiter ;
 call alert(2,102);