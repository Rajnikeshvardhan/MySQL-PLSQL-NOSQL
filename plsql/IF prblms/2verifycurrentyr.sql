delimiter @
create procedure verifyAdmYr()
begin

     select admission_year, if(year(curdate())=admission_year,'yes','no') as 'verify'  from students;
end @
call verifyAdmYr()@