Create database AspCrud;
use AspCrud;
create table crud(
id int primary key identity not null,
firstname varchar(250) unique not null,
lastname varchar(250),
mobileno varchar(250),
);

select * from crud