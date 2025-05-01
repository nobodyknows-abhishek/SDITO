set serveroutput on;
declare
n number;
i number;
s number := 0;
begin
    n:= &x;
    for i in 1..n
    loop
    s:=s+i;
    end loop;
    dbms_output.put_line('Sum of first '||n||' number is '||s);
end;
/