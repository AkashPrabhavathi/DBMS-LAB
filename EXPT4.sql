SQL> Create table cust (CustID int, Name varchar(30), Age int, Address varchar(50), Salary int);

Table created.

SQL> Insert into cust values(1,'Ramesh', 32, 'Ahmadabad', 2500.00);

1 row created.

SQL> Insert into cust values(2,'Khilan', 25, 'Delhi', 2000.00);

1 row created.

SQL> Insert into cust values(3,'Kaushik', 23, 'Kota', 2500.00);

1 row created.

SQL> Insert into cust values(4,'Chaitali', 25, 'Mumbai', 7000.00);

1 row created.

SQL> Insert into cust values(5,'Hardik', 27, 'Bhopal', 9000.00);

1 row created.

SQL> Insert into cust values(6,'Komal', 22, 'MP', 5000.00);

1 row created.

SQL> select * from customers;

    CUSTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                                                SALARY
-------------------------------------------------- ----------
         1 Ramesh                                 32
Ahmadabad                                                2500

         2 Khilan                                 25
Delhi                                                    2000

         3 Kaushik                                23
Kota                                                     2500


    CUSTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                                                SALARY
-------------------------------------------------- ----------
         4 Chaitali                               25
Mumbai                                                   7000

         5 Hardik                                 27
Bhopal                                                   9000

         6 Komal                                  22
MP                                                       5000


6 rows selected.

SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  total_rows number(2);
  3  BEGIN
  4  UPDATE customers SET salary = salary + 500;
  5  IF sql%notfound THEN
  6  dbms_output.put_line('no customers selected');
  7  ELSIF sql%found THEN
  8  total_rows := sql%rowcount;
  9  dbms_output.put_line( total_rows || ' customers selected ');
 10  END IF;
 11  END;
 12  /
6 customers selected

PL/SQL procedure successfully completed.

SQL> select * from cust;

    CUSTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                                                SALARY
-------------------------------------------------- ----------
         1 Ramesh                                 32
Ahmadabad                                                3000

         2 Khilan                                 25
Delhi                                                    2500

         3 Kaushik                                23
Kota                                                     3000


    CUSTID NAME                                  AGE
---------- ------------------------------ ----------
ADDRESS                                                SALARY
-------------------------------------------------- ----------
         4 Chaitali                               25
Mumbai                                                   7500

         5 Hardik                                 27
Bhopal                                                   9500

         6 Komal                                  22
MP                                                       5500


6 rows selected.

SQL>