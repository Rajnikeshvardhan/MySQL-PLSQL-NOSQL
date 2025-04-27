delimiter //
drop procedure if exists negativeprice//
create procedure negativeprice(in pname varchar(30), in q int, in p int)
begin
    declare continue handler for sqlexception
    begin
        show errors;
    end;
    if p<1 then 
    signal sqlstate'45000'
    set MESSAGE_TEXT = 'price should be positive'; 
    end if;
    insert into products(product_name,quantity,price) values(pname,q,p);
end//
delimiter ;
call negativeprice('pencils',100,-5);