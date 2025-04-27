delimiter //
drop procedure if exists productNotExists//
create procedure productNotExists(in pid int,in qsold int)
begin
	
    declare continue handler for sqlexception
    begin
        show errors;
    end;
    insert into sales (product_id,quantity_sold) values(pid,qsold);
end//
delimiter ;
call productNotExists(5,2);