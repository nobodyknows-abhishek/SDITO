set serveroutput on;
drop table Areas;
create table Areas(radius number(5,3),area number(10,3));

declare 
r number;
pi constant number(8,2) := 3.14;
area number(10,2);

begin
for r in 6..10
loop
area:= pi*r*r;
insert into Areas values(r,area);
end loop;
end;
/