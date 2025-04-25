delimiter //
drop trigger if exists at_insert_sales//
create trigger at_insert_sales after insert on sales for each row
begin
    update products set quantity=quantity-new.quantity_sold where product_id= new.product_id;
end //
delimiter ;

