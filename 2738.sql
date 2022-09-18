---Developed by: @owallacejr

create table score (candidate_id integer,math NUMERIC, specific NUMERIC,project_plan NUMERIC,
                    FOREIGN KEY (candidate_id) REFERENCES candidate (id));

create table candidate (id SERIAL  PRIMARY KEY , name varchar(100));

insert into candidate (name) values ( 'Michael P Cannon');
insert into candidate (name) values ('Barbra J Cable');
insert into candidate (name) values ('Ronald D Jones');
insert into candidate (name) values ('Timothy K Fitzsimmons');
insert into candidate (name) values ('Ivory B Morrison');
insert into candidate (name) values ('Sheila R Denis');
insert into candidate (name) values ('Edward C Durgan');
insert into candidate (name) values ('William K Spencer');
insert into candidate (name) values ('Donna D Pursley');
insert into candidate (name) values ('Ann C Davis');
	
insert into score (candidate_id, math, specific_, project_plan  ) values ( '1', '76','58','21');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '2', '4','5','22');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '3', '15','59','12');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '4', '41','42','99');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '5', '22','90','9');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '6', '82','77','15');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '7','82', '99','56');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '8', '11','4','22');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '9', '16','29','94');
insert into score (candidate_id, math, specific_, project_plan  ) values ( '10', '1','7','59');


select c.name ,trunc((((math*2)+(specific*3)+(project_plan*5))/10), 2) as avg
from candidate c 
inner join score s 
on c.id =s.candidate_id 
order by avg desc
