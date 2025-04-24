-- 2. [REPEAT] For each course, count the number of enrolled students and log it intoanew table course_summary. 
delimiter //
drop procedure if exists course_summary//
 create procedure course_summary()
  begin
  declare count_d int;
  declare i int default 0;
  declare count_ int;
  declare cid int;
  drop table temp;
  create temporary table temp(course int,num_students int);
  select distinct count(course_id) into count_d from courses;
  repeat 
	select course_id, count(*) into cid,count_ from nikeshpl.enrollments group by course_id limit i,1;
       insert into temp values (cid,count_);
        set i=i+1;
       until i>=count_d
  end repeat;
  select * from temp;
  end //
  delimiter ;
  call course_summary();
