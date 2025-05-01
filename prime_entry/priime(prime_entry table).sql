set serveroutput on;
create table prime_entry(
num_id number(3) primary key,
prime_num number(3) not null
);
create sequence seq
start with 1
increment by 1
/
set serveroutput on;
declare
num number;
j number;
n number;
i number;
flag number;
g number;
begin
num:=&n;
n:=TRUNC(num/2);
for i in 2..n
loop
if(mod(num,i)=0)then
flag:=1;
exit;
else
flag:=0;
end if;
end loop;
dbms_output.put_line('---------------------');
if(flag=1)then
dbms_output.put_line(num||' is not prime');
else
select seq.nextval into g from dual;
insert into prime_entry values(g,num);
end if;
end;
/