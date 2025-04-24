delimiter #
create procedure assign()
begin
declare i int default 0;
declare count1 int;
declare sid int;
declare cid int;
declare  mark int;
create temporary table temp(id int,cid int,stat varchar(20));

select count(*) into count1 from marks ; 
	while i<count1 
    do
    select student_id,course_id,marks_obtained into sid,cid,mark from marks limit i,1;
    if mark >=85 then insert into plsqlprblms.grades values (sid,cid,'Execelent');
		insert into temp values(sid,cid,'Execelent');
    elseif mark<85 then insert into plsqlprblms.grades values (sid,cid,'not Execelent');
    insert into temp values(sid,cid,'not excellent');
    else select 'not possible';
    end if;
   set i=i+1;
    end while;
    select * from temp;
end #
delimiter ; 
drop table temp;
call assign();