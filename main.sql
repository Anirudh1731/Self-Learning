-- create a table
CREATE TABLE Student (
  id INTEGER PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  age INTEGER NOT NULL,
  dob date NOT NULL,
  Email_id VARCHAR(50) NOT NULL
);
CREATE TABLE Course(
    cid INTEGER NOT NULL PRIMARY KEY,
    cname VARCHAR(15)
);
CREATE TABLE Marks(
    std VARCHAR(30) NOT NULL,
    tech_marks INTEGER NOT NULL,
    ap_marks INTEGER NOT NULL,
    cid INTEGER,

    FOREIGN KEY (cid) REFERENCES Course(cid)
    
);
-- insert some values
INSERT INTO Student VALUES (1, 'Ryan', 12,'2002-08-14','anir@gmail.com');
INSERT INTO Course VALUES (1,'dbms');
INSERT INTO Student VALUES (2, 'Joanna', 15,'2002-08-15','ani@gmail.com');
INSERT INTO Marks VALUES ('12',32,50,1);
INSERT INTO Marks VALUES ('13',44,52,1);
INSERT INTO Marks VALUES ('14',36,51,1);
-- fetch some values
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Marks;
SELECT AVG(tech_marks) FROM Marks;
SELECT * FROM MARKS WHERE tech_marks=32;


