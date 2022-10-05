--Developed by owallacejr


create table users(
id serial primary key,
name varchar(50),
type char,
address varchar(50)
);

drop table packpages;
create table packages(
id_package serial primary key,
id_user_sender integer,
id_user_receiver integer,
color varchar(50),
year integer,
foreign key(id_user_sender) references users(id),
foreign key(id_user_receiver) references users(id)
);

insert into users(name,address) values('Edgar Codd','England');
insert into users(name,address) values('Peter Chen','Taiwan');
insert into users(name,address) values('Jim Gray','United States');
insert into users(name,address) values('Elizabeth ONeil','United States');

insert into packages(id_user_sender,id_user_receiver, color, year) values(1,2,'blue',2015);
insert into packages(id_user_sender,id_user_receiver, color, year) values(1,3,'blue',2019);
insert into packages(id_user_sender,id_user_receiver, color, year) values(2,4,'red',2019);
insert into packages(id_user_sender,id_user_receiver, color, year) values(2,1,'green',2018);
insert into packages(id_user_sender,id_user_receiver, color, year) values(3,4,'red',2015);
insert into packages(id_user_sender,id_user_receiver, color, year) values(4,3,'blue',2019);


select packages.year, u1.name as sender, u2.name as receiver
from packages join
     users u1
     on packages.id_user_sender = u1.id join
     users u2
     on packages.id_user_receiver = u2.id
where (packages.year = 2015 or packages.color like 'blue')
     AND u2.address <> 'Taiwan' order by packages.year desc;
