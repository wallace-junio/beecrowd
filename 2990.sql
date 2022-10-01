---Developed by owallacejr


create  table empregados(
cpf varchar(15) primary key,
enome varchar(60),
salario float,
cpf_supervisor varchar(15),
dnumero integer
);


create table departamentos(
	dnumero integer primary key,
	dnome varchar(60),
	cpf_gerente varchar(15)
);

create table trabalha (
	cpf_emp varchar(15),
	pnumero integer,
	foreign key(cpf_emp) references empregados(cpf)
);

create table projetos (
	pnumero integer primary key,
	pnome varchar(45),
	dnumero integer,
	foreign key (dnumero) references departamentos(dnumero)
);

insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('049382234322','Joao Silva',2350,'2434332222',1010);
insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('586733922290','Mario Silveira',3500,'2434332222',1010);
insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('2434332222','Aline Barros	',2350,null,1010);
insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('1733332162','Tulio Vidal',8350,null,1020);
insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('4244435272','Juliana Rodrigues',3310,null,1020);
insert into empregados(cpf, enome, salario, cpf_supervisor, dnumero)
values('1014332672','Natalia Marques',2900,null,1010);

insert into departamentos(dnumero, dnome, cpf_gerente)
values (1010,'Pesquisa','049382234322');
insert into departamentos(dnumero, dnome, cpf_gerente)
values (1020,'Ensino','2434332222');

insert into trabalha(cpf_emp, pnumero) 
values('049382234322',2010);
insert into trabalha(cpf_emp, pnumero) 
values('586733922290',2020);
insert into trabalha(cpf_emp, pnumero) 
values('049382234322',2020);

insert into projetos(pnumero, pnome, dnumero)
values(2010,'Alpha',1010);
insert into projetos(pnumero, pnome, dnumero)
values(2020,'Beta',1020);


select emp.cpf, emp.enome , dep.dnome  from empregados emp
inner join departamentos dep on dep.dnumero= emp.dnumero 
left join trabalha tra on emp.cpf = tra.cpf_emp where tra.cpf_emp is NULL 
order by cpf 


