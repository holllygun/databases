
create table if not exists Department(
id serial primary key,
dep_name varchar(60));

create table if not exists Employee(
id serial primary key,
employee_name varchar(60),
department integer not null references Department(id),
head_of_department integer not null references Employee(id)); 
