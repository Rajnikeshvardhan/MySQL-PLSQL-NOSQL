delimiter //
drop procedure if exists namenotnull//
create procedure namenotnull(in pname varchar(30), in q int, in p int)
begin
    declare continue handler for sqlexception
    begin
        show errors;
    end;
    if pname is null or pname='' then 
    signal sqlstate'45000'
    set MESSAGE_TEXT = 'Product name cannot be null or empty'; 
    else
    insert into products(product_name,quantity,price) values(pname,q,p);
    end if;
end//
delimiter ;
call namenotnull('',100,5);