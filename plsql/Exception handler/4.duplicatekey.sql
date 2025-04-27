delimiter //
drop procedure if exists duplicateskey//
create procedure duplicateskey(in pid int,in pname varchar(30),in q int,in p int)
begin
	declare a condition for sqlstate '23000';
    declare continue handler for a
    begin
        show errors;
    end;
    insert into products (product_id,product_name,quantity,price) values(pid,pname,q,p);
end//
delimiter ;
call duplicateskey(1,'Laptop',20,75000.00);