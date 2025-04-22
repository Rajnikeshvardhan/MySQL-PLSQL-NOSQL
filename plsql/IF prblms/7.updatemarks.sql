delimiter //
create procedure updatemarks(in sid int,in cid int,in marks int)
begin
if (sid,cid) in (select student_id,course_id from students,courses) then
update marks set marks_obtained=marks where cid=course_id and sid=student_id;select 'updated';
else select 'student or course is not exists' as warning;
end if;

end // 
delimiter ;
call updatemarks(4,104,100);