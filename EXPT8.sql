SQL> Create table customer10(ID int PRIMARY KEY,NAME varchar(40),AGE int,ADDRESS varchar(70),SALARY int);

Table created.

SQL> Insert into customer10 values(1,'Ezhil',23,'aaa',20000);

1 row created.

SQL> Insert into customer10 values(2,'Aarthi',24,'bbb',30000);

1 row created.

SQL>  Insert into customer10 values(3,'Sumathi',21,'ccc',35000);

1 row created.

SQL> Insert into customer10 values(4,'Viji',24,'ddd',40000);

1 row created.

SQL> Insert into customer001 values(5,'Priya',21,'eee',43000);

1 row created.

SQL>  SET SERVEROUTPUT ON;
SQL> DECLARE
  2  c_id customer.id%type:=5;
  3  c_name customer.name%type;
  4  c_addr customer.address%type;
  5  BEGIN
  6  SELECT name, address INTO c_name, c_addr
  7  FROM customer where id=c_id;
  8  dbms_output.put_line('name:' || c_name);
  9  dbms_output.put_line('address:' || c_addr);
 10  EXCEPTION
 11  WHEN no_data_found THEN
 12  dbms_output.put_line('no such customer!');
 13  WHEN others THEN
 14  dbms_output.put_line('error!');
 15  END;
 16  /
no such customer!

PL/SQL procedure successfully completed.

SQL> select * from customer10;

        ID NAME                                            AGE
---------- ---------------------------------------- ----------
ADDRESS
----------------------------------------------------------------------
    SALARY
----------
         1 Ezhil                                            23
aaa
     20000

         2 Aarthi                                           24
bbb
     30000

        ID NAME                                            AGE
---------- ---------------------------------------- ----------
ADDRESS
----------------------------------------------------------------------
    SALARY
----------

         3 Sumathi                                          21
ccc
     35000

         4 Viji                                             24
ddd

        ID NAME                                            AGE
---------- ---------------------------------------- ----------
ADDRESS
----------------------------------------------------------------------
    SALARY
----------
     40000


SQL>