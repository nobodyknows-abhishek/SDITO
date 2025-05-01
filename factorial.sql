set serveroutput on;
declare 
n number;
i number;
f number:=1;
begin
    n := &x;
    for i in 1..n
    loop
    f:=f*i;
    end loop;
    dbms_output.put_line('Factorial of ' || n ||'is' || f);
    end;
    /
