
SQL> CREATE SEQUENCE student_seq003 START WITH 1 INCREMENT BY 1;

Sequence created.

SQL> CREATE TABLE students03 (student_id INT PRIMARY KEY, student_name VARCHAR(100), student_email VARCHAR(100));

Table created.

SQL> INSERT INTO students03 (student_id, student_name, student_email) VALUES (student_seq003.NEXTVAL, 'Alice Johnson', 'alice@example.com');

1 row created.

SQL> INSERT INTO students03 (student_id, student_name, student_email) VALUES (student_seq003.NEXTVAL, 'Bob Smith','Bob@example.com');

1 row created.

SQL> INSERT INTO students03 (student_id, student_name, student_email) VALUES (student_seq003.NEXTVAL, 'Charlie Brown','charlie@example.com');

1 row created.
SQL> CREATE VIEW student_view003 AS SELECT student_id, student_name, student_email FROM students03;

View created.

SQL> INSERT INTO students03 (student_id, student_name, student_email) VALUES (student_seq003.NEXTVAL, 'Diana Prince', 'diana@example.com');

1 row created.

SQL> UPDATE students03 SET student_email = 'new_bob@example.com' WHERE student_name ='Bob Smith';

1 row updated.

SQL> DELETE FROM students03 WHERE student_name = 'Charlie Brown';

1 row deleted.

SQL> SELECT * FROM student_view003;

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------
         1
Alice Johnson
alice@example.com

         2
Bob Smith
new_bob@example.com

STUDENT_ID
----------
STUDENT_NAME
--------------------------------------------------------------------------------
STUDENT_EMAIL
--------------------------------------------------------------------------------

         4
Diana Prince
diana@example.com

SQL> CREATE INDEX idx_student_email ON students02 (student_email);

Index created.
