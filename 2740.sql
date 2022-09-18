--- Developed by: @owallacejr	


create table league(position integer  primary key, team varchar(50));

insert into league(position, team) values(1 ,'The Quack Bats');
insert into league(position, team) values(2 ,'The Responsible Hornets');
insert into league(position, team) values(3 ,'The Bawdy Dolphins');
insert into league(position, team) values(4 ,'The Abstracted Sharks');
insert into league(position, team) values(5 ,'The Nervous Zebras');
insert into league(position, team) values(6 ,'The Oafish Owls');
insert into league(position, team) values(7 ,'The Unequaled Bison');
insert into league(position, team) values(8 ,'The Keen Kangaroos');
insert into league(position, team) values(9 ,'The Left Nightingales');
insert into league(position, team) values( 10,'The Terrific Elks');
insert into league(position, team) values(11 ,'The Lumpy Frogs');
insert into league(position, team) values(12 ,'The Swift Buffalo');
insert into league(position, team) values(13 ,'The Big Chargers');
insert into league(position, team) values(14 ,'The Rough Robins');
insert into league(position, team) values(15,'The Silver Crocs');

(select 'Podium: '|| team from league order by position  limit 3)
union all 
(with teams as (select * from league order by position desc limit 2)
  select 'Demoted: '|| team from teams order by position);

