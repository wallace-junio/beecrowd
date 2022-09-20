create table doctors(
	id serial primary key,
	name varchar(50)
);


create table work_shifts(
	id SERIAL  primary key,
	name varchar (50),
	bonus numeric
);

create table attendances(
	id serial primary key,
	id_doctor integer,
	hours integer,
	id_work_shift integer,
	foreign key (id_doctor) references doctors (id),
	foreign key (id_work_shift) references work_shifts(id)
);



insert into doctors(name) values('Arlindo');
insert into doctors(name) values('Tiago');
insert into doctors(name) values('Amanda');
insert into doctors(name) values('Welligton');

insert into work_shifts(name, bonus) values('nocturnal',15);
insert into work_shifts(name, bonus) values('afternoon',2);
insert into work_shifts(name, bonus) values('Day',1);

insert into attendances(id_doctor,hours,id_work_shift) values(1,5,1);
insert into attendances(id_doctor,hours,id_work_shift) values(3,2,1);
insert into attendances(id_doctor,hours,id_work_shift) values(3,3,2);
insert into attendances(id_doctor,hours,id_work_shift) values(2,2,3);
insert into attendances(id_doctor,hours,id_work_shift) values(1,5,3);
insert into attendances(id_doctor,hours,id_work_shift) values(4,1,3);
insert into attendances(id_doctor,hours,id_work_shift) values(4,2,1);
insert into attendances(id_doctor,hours,id_work_shift) values(3,2,2);
insert into attendances(id_doctor,hours,id_work_shift) values(2,4,2);


select d.name,round(SUM(((w.bonus/100)*(a.hours*150))+(a.hours*150)),1)  as salary from attendances a
inner join doctors d on a.id_doctor=d.id
inner join work_shifts w on a.id_work_shift = w.id
group by d.id
order by salary desc
