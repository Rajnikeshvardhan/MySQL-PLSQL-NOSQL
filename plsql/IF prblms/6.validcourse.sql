delimiter //
create procedure validCourse(in sid int,in cid int)
begin
if cid in (select course_id from courses) then
insert into enrollments values(sid,cid);select 'enrolled';
else select 'course not present' as warning;
end if;

end // 
delimiter ;
call validCourse(4,10);