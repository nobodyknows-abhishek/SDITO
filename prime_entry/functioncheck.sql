set serveroutput on
create or replace function prime_test(id number)
return number is num number(20);
begin
select num_id into num from prime_entry where prime_num=id;
return 1;
exception
when NO_DATA_FOUND then return 0;
end;
/
declare
num number;
j number;
n number;
i number;
flag number;
x number;
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
x:=prime_test(num);
if(x=0)then
insert into prime_entry values(seq.nextval,num);
else
dbms_output.put_line('Already exist in Table');
end if;
end if;
end;
/
//https://drive.google.com/drive/folders/1ECeh0Xjlt3FNsew1-OXTIZVClmkT9guh