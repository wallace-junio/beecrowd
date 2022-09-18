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


