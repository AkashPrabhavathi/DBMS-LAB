SQL> Create table Studenta (StudentID int, Name varchar(30), Age int);

Table created.

SQL> Create table Coursesa (CourseID int, CourseName varchar(20));

Table created.

SQL> Create table Enrollmentsa (EnrollmentID int, StudentID int, CourseID int, Grade varchar(5));

Table created.

SQL> Insert into Studenta values(1,’Alice’, 20);

1 row created.

SQL> Insert into Studenta values(2,’Bob’, 22);

1 row created.

SQL> Insert into Studenta values(2,'Charlie’, 21);

1 row created.

SQL> Insert into Coursesa values(1,'Math');

1 row created.

SQL> Insert into Coursesa values(2,'English');

1 row created.

SQL> Insert into Coursesa values(3,'History');

1 row created.

SQL> Insert into Enrollmentsa values(1,1,1,’A’);

1 row created.

SQL> Insert into Enrollmentsa values(2,1,2,’B’);

1 row created.

SQL> Insert into Enrollmentsa values(3,2,1,’A-’);

1 row created.

SQL> Insert into Enrollmentsa values(4,3,3,’B+’);

1 row created.

SQL> Insert into Enrollmentsa values(5,3,2,’A’);

1 row created.

SQL> SELECT Studenta.StudentID, Studenta.Name, Studenta.Age, Coursesa.CourseID, Coursesa.CourseName, Enrollmentsa.Grade FROM Studenta INNER JOIN Enrollmentsa ON Studenta.StudentID = Enrollmentsa.StudentID INNER JOIN Coursesa ON Enrollmentsa.CourseID = Coursesa.CourseID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20          2
English              B

         1 Alice                                  20          1
Math                 A

         2 Bob                                    22          1
Math                 A-


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         2 Charlie                                21          1
Math                 A-


SQL> SELECT Studenta.StudentID, Studenta.Name, Studenta.Age, Coursesa.CourseID, Coursesa.CourseName, Enrollmentsa.Grade FROM Studenta LEFT JOIN Enrollmentsa ON Studenta.StudentID = Enrollmentsa.StudentID LEFT JOIN Coursesa ON Enrollmentsa.CourseID = Coursesa.CourseID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         2 Bob                                    22          1
Math                 A-

         2 Charlie                                21          1
Math                 A-

         1 Alice                                  20          1
Math                 A


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20          2
English              B


SQL> SELECT Studenta.StudentID, Studenta.Name, Studenta.Age, Coursesa.CourseID, Coursesa.CourseName, Enrollmentsa.Grade FROM Coursesa RIGHT JOIN Enrollmentsa ON Coursesa.CourseID = Enrollmentsa.CourseID RIGHT JOIN Studenta ON Enrollmentsa.StudentID = Studenta.StudentID;

 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         2 Charlie                                21          1
Math                 A-

         2 Bob                                    22          1
Math                 A-

         1 Alice                                  20          1
Math                 A


 STUDENTID NAME                                  AGE   COURSEID
---------- ------------------------------ ---------- ----------
COURSENAME           GRADE
-------------------- -----
         1 Alice                                  20          2
English              B
