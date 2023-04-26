select p.name, length(p.name) as len from people as p
order by len desc;
