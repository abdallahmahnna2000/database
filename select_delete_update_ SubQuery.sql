select name
from student;

select name from instructor 
where salary= '80000' or salary = '60000';

select name from student 
where dept_name= 'Comp. Sci.' and tot_cred > 100;

select dept_name from department 
where building in ('packard','taylor');

select name from student 
where tot_cred between 30 and 70;

select title from course 
where course_id like 'CS%';

select name from instructor 
where salary > 50000 limit 5;

select building, room_number 
from classroom;

select max(budget) 
from department;

update instructor 
set salary = '80000' where ID = '32343';

update student
set name = 'Omar', tot_cred = '90', dept_name = 'Physics'
Where ID = '19991';

create table new_students
(ID varchar (5) primary key,
name varchar (20), dept_name varchar (20), tot_cred decimal (3,0));
insert into new_students values ('87615','ahmed','music','77');
insert into new_students values ('87637','abdu','physics','61');

select s_ID from advisor 
where i_ID = '22222';

select title from course 
where course_id like 'I%';

select dept_name from department 
where dept_name like 'I%';

select dept_name from instructor 
group by salary having salary>'70000';

select start_hr, start_min from time_slot
group by time_slot_id;

select * from instructor
where ID is not null;

select sum(budget) from department;

######################################

select name from instructor
where salary = (select max(salary) from instructor);

select room_number from classroom
where capacity = (select max(capacity) from classroom);

select name from student
where tot_cred = (select min(tot_cred) from classroom)
order by ID;

########################################

delete from course 
where course_id = 'CS-347';

delete from department 
where dept_name= 'Watson';

delete from classroom 
where building= 'Watson';

delete from section
where course_id = 'CS-101';

delete from course 
where course_id = 'MU-199';

#########################################

update student set name = 'Hima'
where ID = '70557';

update student set tot_cred = '70'
where ID = '76543';

update instructor set name = 'manar'
where ID = '15151';

update instructor set salary = '100000'
where ID = '45565';

update department set building = 'Packard'
where dept_name = 'Biology';	
