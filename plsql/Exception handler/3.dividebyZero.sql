delimiter //
drop procedure if exists dividebyZero//
create procedure dividebyZero(in a int,in b int)
begin
    declare divide double;
    declare exit handler for sqlexception
    begin
        select 'infinity' as error;
    end;
    set divide= a/b;
    select divide;
end//
delimiter ;
call dividebyZero(5,0);