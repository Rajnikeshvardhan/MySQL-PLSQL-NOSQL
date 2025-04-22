use plsqlprblms;
delimiter // 
create procedure checkbelongsCS(in cid int)
begin 
	declare i int;
     select course_id into i from courses where department ='Computer Science';
     if i=cid then select cid,'belongs to cs' as Status_,'CS' ;
     else select cid, 'not belongs' as status_ ,'CS';
     end if;
end //
delimiter ;
call checkbelongsCS(104);