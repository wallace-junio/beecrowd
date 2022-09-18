
create table value_table(amount integer);

insert into value_table(amount) values(4);
insert into value_table(amount) values(6);
insert into value_table(amount) values(7);
insert into value_table(amount) values(1);
insert into value_table(amount) values(1);
insert into value_table(amount) values(2);
insert into value_table(amount) values(3);
insert into value_table(amount) values(2);
insert into value_table(amount) values(3);
insert into value_table(amount) values(1);
insert into value_table(amount) values(5);
insert into value_table(amount) values(6);
insert into value_table(amount) values(1);
insert into value_table(amount) values(7);
insert into value_table(amount) values(8);
insert into value_table(amount) values(9);
insert into value_table(amount) values(10);
insert into value_table(amount) values(11);
insert into value_table(amount) values(12);
insert into value_table(amount) values(4);
insert into value_table(amount) values(5);
insert into value_table(amount) values(5);
insert into value_table(amount) values(3);
insert into value_table(amount) values(6);
insert into value_table(amount) values(2);
insert into value_table(amount) values(2);
insert into value_table(amount) values(1);


SELECT amount AS most_frequent_value FROM
  value_table GROUP BY amount ORDER BY COUNT(*) DESC LIMIT 1;
