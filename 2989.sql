--- Developed by: @owallacejr Date: 18/09/2022

create table departamento(
cod_dep  integer,
nome varchar(50),
endereco varchar(50)
);

create table dependente(
matr integer,
nome varchar(50),
endereco varchar(50)
);


create table desconto(
cod_desc integer,
nome varchar(50),
tipo varchar(10),
valor numeric
);


create table divisao(
cod_divisao integer,
nome varchar(50),
endereço varchar(50),
cod_dep numeric
);

create table emp_desc(
cod_desc integer,
matr integer
);


create table emp_venc (
cod_venc integer,
matr integer
);


create table empregado (
matr integer,
nome varchar(50),
endereco varchar(50),
data_lotacao timestamp,
lotacao integer,
gerencia_cod_dep integer,
lotacao_div integer,
gerencia_div integer
);

create table vencimento (
cod_venc integer,
nome varchar(50),
tipo varchar(10),
valor numeric
);


insert into departamento(cod_dep, nome, endereco ) values(1,'Contabilidade','R. Y');
insert into departamento(cod_dep, nome, endereco ) values(2,'TI','R. Y');
insert into departamento(cod_dep, nome, endereco ) values(3,'Engenharia','R. Y');

insert into dependente (matr, nome, endereco ) values(9999,'Francisco Jose','R. Z');
insert into dependente(matr, nome, endereco ) values(88,'Maria da Silva','R.T');
insert into dependente(matr, nome, endereco ) values(55,'Virgulino da Silva','R. 31');

insert into desconto(cod_desc, nome, tipo, valor) values(91,'IR','V',400);
insert into desconto(cod_desc, nome, tipo, valor) values(92,'Plano de saude','V',300);
insert into desconto(cod_desc, nome, tipo, valor) values(93,null,null,null);


insert into divisao(cod_divisao, nome, endereco, cod_dep) values(11,'Ativo','R. X',1);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(12,'Passivo','R. X',1);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(21,'Desenvoilvimento de Projetos','R. Y',2);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(22,'Analise de Sistemas','R. Y',2);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(23,'Programacao','R. W',2);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(31,'Concreto','R. Y',3);
insert into divisao(cod_divisao, nome, endereco, cod_dep) values(32,'Calculo Estrutural','R. Y',3);

insert into emp_desc(cod_desc,  matr) values(91, 3);
insert into emp_desc(cod_desc,  matr) values(91, 27);
insert into emp_desc(cod_desc,  matr) values(91, 9999);
insert into emp_desc(cod_desc,  matr) values(92, 27);
insert into emp_desc(cod_desc,  matr) values(92, 71);
insert into emp_desc(cod_desc,  matr) values(92, 88);
insert into emp_desc(cod_desc,  matr) values(92, 9999);

insert into emp_venc(cod_venc,  matr) values(1, 27);
insert into emp_venc(cod_venc,  matr) values(1, 88);
insert into emp_venc(cod_venc,  matr) values(1, 135);
insert into emp_venc(cod_venc,  matr) values(1, 254);
insert into emp_venc(cod_venc,  matr) values(1, 431);
insert into emp_venc(cod_venc,  matr) values(2, 1);
insert into emp_venc(cod_venc,  matr) values(2, 5);
insert into emp_venc(cod_venc,  matr) values(2, 7);
insert into emp_venc(cod_venc,  matr) values(2, 13);
insert into emp_venc(cod_venc,  matr) values(2, 33);
insert into emp_venc(cod_venc,  matr) values(2, 9999);
insert into emp_venc(cod_venc,  matr) values(3, 3);
insert into emp_venc(cod_venc,  matr) values(3, 55);
insert into emp_venc(cod_venc,  matr) values(3, 71);
insert into emp_venc(cod_venc,  matr) values(3, 222);
insert into emp_venc(cod_venc,  matr) values(4, 25);
insert into emp_venc(cod_venc,  matr) values(4, 476);
insert into emp_venc(cod_venc,  matr) values(5, 371);
insert into emp_venc(cod_venc,  matr) values(6, 3);
insert into emp_venc(cod_venc,  matr) values(6, 27);
insert into emp_venc(cod_venc,  matr) values(6, 9999);
insert into emp_venc(cod_venc,  matr) values(7, 5);
insert into emp_venc(cod_venc,  matr) values(7, 33);
insert into emp_venc(cod_venc,  matr) values(7, 55);
insert into emp_venc(cod_venc,  matr) values(7, 71);
insert into emp_venc(cod_venc,  matr) values(7, 88);
insert into emp_venc(cod_venc,  matr) values(7, 254);
insert into emp_venc(cod_venc,  matr) values(7, 476);
insert into emp_venc(cod_venc,  matr) values(8, 25);
insert into emp_venc(cod_venc,  matr) values(8, 91);
insert into emp_venc(cod_venc,  matr) values(9, 1);
insert into emp_venc(cod_venc,  matr) values(9, 27);
insert into emp_venc(cod_venc,  matr) values(9, 91);
insert into emp_venc(cod_venc,  matr) values(9, 135);
insert into emp_venc(cod_venc,  matr) values(9, 371);
insert into emp_venc(cod_venc,  matr) values(9, 9999);
insert into emp_venc(cod_venc,  matr) values(10, 371);
insert into emp_venc(cod_venc,  matr) values(10, 9999);
insert into emp_venc(cod_venc,  matr) values(11, 91);
insert into emp_venc(cod_venc,  matr) values(12, 3);
insert into emp_venc(cod_venc,  matr) values(12, 27);
insert into emp_venc(cod_venc,  matr) values(12, 254);
insert into emp_venc(cod_venc,  matr) values(12, 9999);
insert into emp_venc(cod_venc,  matr) values(13, 3);
insert into emp_venc(cod_venc,  matr) values(13, 5);
insert into emp_venc(cod_venc,  matr) values(13, 7);
insert into emp_venc(cod_venc,  matr) values(13, 25);
insert into emp_venc(cod_venc,  matr) values(13, 33);
insert into emp_venc(cod_venc,  matr) values(13, 88);
insert into emp_venc(cod_venc,  matr) values(13, 135);


insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(9999,'Jose Sampaio','R. Z','2006-06-06 00:00:00',1 ,1,12,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(33,'Jose Maria','R. 21','2006-03-01 00:00:00',1,NULL,11,11);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(1,'	Maria Jose','R. 52','2003-03-01 00:00:00',1,NULL,11, NULL);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(7,'Yasmin','R. 13','2010-07-02 00:00:00',1,NULL,11,NULL);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(5,'Rebeca','R. 1','2011-04-01 00:00:00',1 ,NULL,12,12);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(13,'Sofia','R. 28','2010-09-09 00:00:00',1 ,NULL ,12 ,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(27,'Andre','R. Z','2005-05-01 00:00:00',2,2,22,NULL);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(88,'Yami','R.T','2014-02-01 00:00:00',2,NULL,21 ,21);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(431,'Joao da Silva','R.Y','2011-07-03 00:00:00',2,NULL ,21,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(135,'Ricardo Reis','R. 33','2009-08-01 00:00:00',2,NULL,21,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(254,'Barbara','R.Z','2008-01-03 00:00:00',2,NULL,22,22);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(371,'Ines','R.Y','2005-01-01 00:00:00',2 ,NULL ,22 ,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(476,'Flor','R.Z','2015-10-28 00:00:00',2 ,NULL ,23 ,23 );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(25,'Lina','R. 67','2014-09-01 00:00:00',2 ,NULL ,23 ,NULL);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(3,'Jose da Silva	','R.8','2011-01-02 00:00:00',3,3 ,31 ,NULL);
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(71,'Silverio dos Reis','R.C','2009-01-05 00:00:00',3 ,NULL,31 ,31 );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(91,'Reis da Silva','R.Z','2011-11-05 00:00:00',3 ,NULL,31,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(55,'Lucas','R.31','2013-07-01 00:00:00',3 ,NULL ,32 ,32 );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(222,'Marina','R.31','2015-01-07 00:00:00',3 ,NULL ,32 ,NULL );
insert into empregado 
(matr,nome,endereco,data_lotacao,lotacao,gerencia_cod_dep,lotacao_div,gerencia_div) 
values(725,'Angelo','R.X','2001-03-01 00:00:00',2,NULL,21,NULL );

insert into vencimento(cod_venc,nome,tipo,valor ) values(1,'Salario base Analista de Sistemas','V',5000);
insert into vencimento(cod_venc,nome,tipo,valor ) values(2,'Salario base Contador','V',3000);
insert into vencimento(cod_venc,nome,tipo,valor ) values(3,'Salario Base Engenheiro','V',4500);
insert into vencimento(cod_venc,nome,tipo,valor ) values(4,'Salario Base Projetista Software','V',5000);
insert into vencimento(cod_venc,nome,tipo,valor ) values(5,'Salario Base Programador de Sistemas','V',3000);
insert into vencimento(cod_venc,nome,tipo,valor ) values(6,'Gratificacao Chefia Departamento','V',3750);
insert into vencimento(cod_venc,nome,tipo,valor ) values(7,'Gratificacao Chefia Divisao','V',2200);
insert into vencimento(cod_venc,nome,tipo,valor ) values(8,'Salario Trabalhador Costrucao Civil','V',800);
insert into vencimento(cod_venc,nome,tipo,valor ) values(9,'Auxilio Salario Familia','V',300);
insert into vencimento(cod_venc,nome,tipo,valor ) values(10,'Gratificacao Tempo de servico','V',350);
insert into vencimento(cod_venc,nome,tipo,valor ) values(11,'Insalubridade','V',800);
insert into vencimento(cod_venc,nome,tipo,valor ) values(12,'Gratificacao por titulacao - Doutorado','V',2000);
insert into vencimento(cod_venc,nome,tipo,valor ) values(13,'Gratificacao por Titularidade - Mestrado','V',800);

select * from departamento ;
select * from dependente ;
select * from desconto;
select * from divisao ;
select  * from emp_desc;
select * from emp_venc;
select * from empregado e;
select * from vencimento
