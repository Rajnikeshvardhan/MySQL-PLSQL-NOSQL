delimiter //
drop trigger if exists aft_ud_product//
create trigger aft_ud_product after update on products for each row
begin
    insert into audit_log (table_name,action_type,product_id,old_value,new_value) values ('products','after update',old.product_id,old.price,new.price);
end //
delimiter ;