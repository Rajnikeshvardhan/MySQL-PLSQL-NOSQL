 drop table if exists audit_log_sale;
 create table audit_log_sale(action_type varchar(30),table_name varchar(30),product_id int, quantity_sold int,sale_date datetime default CURRENT_TIMESTAMP);
    
delimiter //
drop trigger if exists at_insert_sales_audit//
create trigger at_insert_sales_audit after insert on sales for each row
begin
    insert into audit_log_sale(action_type ,table_name ,product_id , quantity_sold )
    values ('after insert','sales',new.product_id,new.quantity_sold);
end //
delimiter ;

insert into sales(product_id,quantity_sold) values(2,2);
select * from audit_log_sale;


