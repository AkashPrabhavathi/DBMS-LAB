SQL> CREATE TABLE Author(AuthorID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50));

Table created.

SQL> INSERT INTO Author(AuthorID,FirstName,LastName)VALUES(1,'George','Orwell');

1 row created.

SQL> INSERT INTO Author(AuthorID,FirstName,LastName)VALUES(2,'Aldous','Huxley');

1 row created.

SQL> INSERT INTO Author(AuthorID,FirstName,LastName)VALUES(3,'J.K.','Rowling');

1 row created.



SQL> select *from author;


  AUTHORID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
         1 George
Orwell

         2 Aldous
Huxley

         3 J.K.
Rowling


SQL> CREATE TABLE Book (
  2      BookID INT PRIMARY KEY,
  3      Title VARCHAR2(100),
  4      Genre VARCHAR2(50),
  5      PublicationYear INT
  6  );

Table created.


SQL> INSERT INTO Book(BookID,Title,Genre,PublicationYear)VALUES(1,'1984','Dystopian',1949);

1 row created.

SQL> INSERT INTO Book(BookID,Title,Genre,PublicationYear)VALUES(2,'Brave and new world','Dystopian',1932);

1 row created.

SQL> INSERT INTO Book(BookID,Title,Genre,PublicationYear)VALUES(3,'Harry Potter and the sorceres stone','Fantasy',1997);

1 row created.



SQL> select *from book;

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------
         1
1984
Dystopian                                                     1949

         2
Brave and new world
Dystopian                                                     1932

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------

         3
Harry Potter and the sorceres stone
Fantasy                                                       1997



SQL> CREATE TABLE BookAuthor(BookID INT,AuthorID INT, PRIMARY KEY (BookID,AuthorID),FOREIGN KEY(BookID) REFERENCES Book(BookID),FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID));

Table created.

SQL> INSERT INTO BookAuthor(BookID,AuthorID)VALUES(1,1);

1 row created.

SQL> INSERT INTO BookAuthor(BookID,AuthorID)VALUES(2,2);

1 row created.

SQL> INSERT INTO BookAuthor(BookID,AuthorID)VALUES(3,3);

1 row created.



SQL> SELECT *FROM BOOKAUTHOR;

    BOOKID   AUTHORID
---------- ----------
         1          1
         2          2
         3          3


SQL> CREATE TABLE Borrowers (
  2      BorrowerID INT PRIMARY KEY,
  3      FirstName VARCHAR2(50),
  4      LastName VARCHAR2(50),
  5      MembershipDate DATE
  6  );

Table created.

SQL> INSERT INTO Borrowers
  2  (BorrowerID, FirstName, LastName, MembershipDate)
  3  VALUES
  4  (1, 'John', 'Doe', DATE '2023-01-01');

1 row created.

SQL> INSERT INTO Borrowers
  2  (BorrowerID, FirstName, LastName, MembershipDate)
  3  VALUES
  4  (2,'Jane', 'Smith', DATE '2023-02-15');

1 row created.


SQL> select *from borrowers;

BORROWERID FIRSTNAME
---------- --------------------------------------------------
LASTNAME                                           MEMBERSHI
-------------------------------------------------- ---------
         1 John
Doe                                                01-JAN-23

         2 Jane
Smith                                              15-FEB-23



SQL> CREATE TABLE BorrowedBooks (
  2  BorrowerID INT,
  3  BookID INT,
  4  BorrowedDate DATE,
  5  ReturnDate DATE,
  6  PRIMARY KEY (BorrowerID, BookID),
  7  FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID),
  8  FOREIGN KEY (BookID) REFERENCES Book(BookID)
  9  );

Table created.

SQL> INSERT INTO BorrowedBooks
  2  (BorrowerID, BookID, BorrowedDate, ReturnDate)
  3  VALUES
  4  (1, 1, DATE '2023-03-01', DATE '2023-03-15');

1 row created.

SQL> INSERT INTO BorrowedBooks
  2  (BorrowerID, BookID, BorrowedDate, ReturnDate)
  3  VALUES
  4  (2, 3, DATE '2023-03-05', DATE '2023-03-20');

1 row created.


SQL> select *from borrowedbooks;

BORROWERID     BOOKID BORROWEDD RETURNDAT
---------- ---------- --------- ---------
         1          1 01-MAR-23 15-MAR-23
         2          3 05-MAR-23 20-MAR-23
