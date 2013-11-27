USE MyDatabase;

CREATE TABLE Orase
(
  orasid INT IDENTITY(1,1),
  oname VARCHAR(50),
  CONSTRAINT PK_Companii Primary Key(orasid)
 )

CREATE TABLE Companii 
 (
	compno INT,
	cname VARCHAR(50),
	oras INT,
	CONSTRAINT PK_Companies Primary Key(compno),
    CONSTRAINT FK_OrasID FOREIGN Key(oras) REFERENCES ORASE(orasid)

 )
  
CREATE TABLE Departamente
  (
	deptno INT,
	dname VARCHAR(50),
	CONSTRAINT PK_Departamente PRIMARY KEY(deptno),
  )

CREATE TABLE Angajati
 (
	empid INT IDENTITY(1,1),
	ename VARCHAR(50),
	deptno INT,
	compno INT,
	oras INT,
	mgrid INT,
	CONSTRAINT PK_Angajati PRIMARY KEY(empid),
	/*CONSTRAINT FK_Angajati FOREIGN KEY(mgrid) REFERENCES Angajati(empid),*/
	CONSTRAINT FK_Departamente FOREIGN KEY(deptno) REFERENCES Departamente(deptno),
	CONSTRAINT FK_Companii FOREIGN KEY(compno) REFERENCES Companii(compno),
    CONSTRAINT fK_Oras FOREIGN Key(oras) REFERENCES ORASE(orasid)
  )
  

  CREATE TABLE SKILLS 
  (
	skillno INT PRIMARY KEY,
    sname VARCHAR(50)
  )

  CREATE TABLE AngSkills 
  (
	empid INT FOREIGN KEY REFERENCES SKILLS(skillno),
	skillid INT FOREIGN KEY REFERENCES Angajati(empid)
  )