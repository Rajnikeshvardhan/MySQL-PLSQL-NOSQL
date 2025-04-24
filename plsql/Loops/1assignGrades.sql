-- [WHILE] Assign “Excellent” to students with marks > 85 in all courses in thegradestable.
delimiter #
create procedure assign()
begin
declare i int default 0;
declare count1 int;
declare sid int;
declare cid int;
declare  mark int;

select count(*) into count1 from marks ; 
	while i<count1 
    do
    select student_id,course_id,marks_obtained into sid,cid,mark from marks limit i,1;
    if mark >=85 then insert into plsqlprblms.grades values (sid,cid,'Execelent');
    elseif mark<85 then insert into plsqlprblms.grades values (sid,cid,'not Execelent');
    else select 'not possible';
    end if;
   set i=i+1;
    end while;
end #
delimiter ;
call assign();
