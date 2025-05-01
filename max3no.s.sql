set serveroutput on;
declare 
b number;
a number;
c number;
begin
a:=&a;
b:=&b;
c:=&c;
if(a>b and a>c) then
dbms_output.put_line(a||' is the largest number');
elsif (b>c)
then
dbms_output.put_line(b||' is the largest number');
else 
dbms_output.put_line(c||' is the largest number');
end if;
end;
/