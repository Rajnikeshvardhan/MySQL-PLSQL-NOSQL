delimiter //
drop procedure if exists productNotFound//
create procedure productNotFound(in pid int,in p int)
begin
    declare pi int;
    declare continue handler for not found
    begin
        select concat(pid,' product id is doesnot exist') as error;
    end;
    select product_id into pi from products where pid=product_id;
    update products set price=p where pid=product_id;
 
end//
delimiter ;
call productNotFound(5,10000);