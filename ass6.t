1. create view vw_client_master as select client_no,Name,Address1,Balance_due from client_master;
a.Insert into vw_client_master(client_no,name,address1,balance_due)values('C007','ABHISEK SINGH','BALLY',15000);
Insert into vw_client_master(client_no,name,address1,balance_due)values('C008','DIPAK DAS','SALTLAKE',10000);
Insert into vw_client_master(client_no,name,address1,balance_due)values('C009','RAMAN GUPTA','HOWRAH',20000);
b.Update vw_client_master set Balance_due=8000 where client_no='C008';
c.Delete from vw_client_master where client_no = 'C007';

2.create view vw_sales_det as select s1.client_no,s1.order_no,s1.order_date,s2.product_no,s2.qty_ordered,s1.order_status from sales_order s1,sales_order_details s2 where s1.order_no=s2.order_no and s1.order_status='BackOrder';
a.Insert into vw_sales_det(client_no,order_date,product_no,qty_ordered,order_status) values('C007','O19251','12-Jan-91','P00091',100,'InProcess');
b.Update vw_sales_det set client_no = 'C006' where order_no = 'O19002';
c.Delete from vw_sales_det where client_no='C005';
d.Drop view vw_sales_det