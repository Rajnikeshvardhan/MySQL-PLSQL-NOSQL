use plsqlprblms;
delimiter @
create procedure verify(in sid int)
begin
declare y int;
select admission_year into y from students where student_id=sid;
if y=year(curdate()) then select y as adm_yr, 'yes' as verify ;
else select y as adm_yr, 'no' as verify ;
end if;
end @
call verify(4)@