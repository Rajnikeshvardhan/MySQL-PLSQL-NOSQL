delimiter //
drop procedure if exists fetch_names//
create procedure fetch_names()
begin 
     declare done int default 0;
     declare name_temp varchar(20);
	 declare cur cursor for select name from students;
     declare continue handler for not found set done=1;
     drop table if exists temp;
     create temporary table temp(name varchar(20));
     open cur;
     hi:loop
            fetch cur into name_temp;
            if done=1 then leave hi; end if;
            insert into temp values (name_temp);
            end loop hi;
            select * from temp;
end //
delimiter ;
call fetch_names();

