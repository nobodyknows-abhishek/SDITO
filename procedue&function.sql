set serveroutput on 
create function Max_id return number  
is 
var_id number(4); 
begin 
select max(Transaction_id) into var_id from Transaction_acc; 
  if var_id is null then 
  var_id:=200; 
  else 
  var_id:=var_id+1; 
  end if; 
  return var_id; 
  exception 
  when no_data_found then 
  return var_id; 
 end; 
/
create procedure Transaction_entry(varaccn in Acc_details.Acc_no%type, varamt in 
Acc_details.Total_cost%type) 
 is 
 vartid Transaction_acc.Transaction_id%type; 
 begin 
 vartid:=Max_id(); 
    insert into Transaction_acc values(vartid, varaccn,varamt, 0, 'CHQ',0,Sysdate); 
 dbms_output.put_line('  Data inserted with Id   ' ||vartid); 
 end; 
/
declare  
  cursor add_interest 
  is 
select Acc_no, Total_cost from Acc_details where Acc_status='A'; 
  varaccn Acc_details.Acc_no%type; 
  varamt Acc_details.Total_cost%type; 
  begin 
  open add_interest; 
  if add_interest%isopen then 
   loop 
   fetch add_interest into varaccn, varamt; 
   exit when add_interest%notfound; 
update Acc_details set Total_cost=varamt*1.02 where Acc_no=varaccn; 
  dbms_output.put_line( varaccn || '   is updated  '); 
  varamt:=varamt*1.02; 
  Transaction_entry(varaccn, varamt); 
  end loop; 
  else 
   dbms_output.put_line('Cursor not opened.  '); 
  end if; 
  close add_interest; 
commit;
end;
/