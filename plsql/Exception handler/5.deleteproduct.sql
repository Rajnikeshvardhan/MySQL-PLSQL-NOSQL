delimiter //
drop procedure if exists deleteproduct//
create procedure deleteproduct(in pid int)
begin
	declare pi int;
    declare exit handler for not found
    begin
        select 'ID doesnot exists' as message;
    end;
    declare continue handler for sqlexception
    begin
        select 'errors occured pls try again' as message;
    end;
    select product_id into pi from products where product_id=pid;
    delete from products where product_id=pid;
   select 'successful' as message;
end //
delimiter ;
call deleteproduct(10)