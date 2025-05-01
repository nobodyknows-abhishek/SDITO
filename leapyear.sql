set serveroutput on;
declare 
y number;
begin
y:= &x;
if(mod(y,400)=0) then
dbms_output.put_line('Leap year');
elsif ((mod(y,4)=0) and (mod(y,100)!=0))
then
dbms_output.put_line('Leap year');
else 
dbms_output.put_line('Not a Leap year');
end if;
end;
/