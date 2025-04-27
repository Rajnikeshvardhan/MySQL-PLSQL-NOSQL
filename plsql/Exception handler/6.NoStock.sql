delimiter //
drop procedure if exists soldavailable//
create procedure soldavailable(in pid int,in psold int)
begin
    declare q int;
    declare continue handler for sqlexception
    begin
        show errors;
    end;
    select quantity into q from products where product_id=pid;
    if psold >q then 
    signal sqlstate'45000'
    set MESSAGE_TEXT = 'NO stock'; 
    end if;
end//
delimiter ;
call soldavailable(1,100);