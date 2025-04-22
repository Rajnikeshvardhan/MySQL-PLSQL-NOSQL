delimiter //
create procedure checkpresent(in sid int)
begin
declare i date;
select date into i from attendance where student_id=sid and date=curdate();
if i=curdate() then  select sid,'present' as status;
else select sid,'no present' as status;
end if;

end // 
delimiter ;
call checkpresent(1);