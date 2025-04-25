delimiter //
drop trigger if exists bfr_inst_sale_outofstock//
create trigger bfr_inst_sale_outofstock before insert on sales for each row
begin
    if new.quantity_sold> (select quantity from products where product_id=new.product_id)
        then signal sqlstate '45000' set message_text='NO stock';
    end if;
end //
