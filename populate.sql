USE MyDatabase;

INSERT INTO Orase(oname) VALUES('Iasi');
INSERT INTO Orase(oname) VALUES('Bucuresti');
INSERT INTO Orase(oname) VALUES('Galati');
INSERT INTO Orase(oname) VALUES('Bacau');

DELETE FROM Companii;
INSERT INTO Companii(compno,cname, oras) VALUES(1000,'TeamNet',1);
INSERT INTO Companii(compno,cname, oras) VALUES(1001,'TeamNet',2);
INSERT INTO Companii(compno,cname, oras) VALUES(1002,'Endava',3);
INSERT INTO Companii(compno,cname, oras) VALUES(1003,'BitDefender',4);

Delete From Departamente;
INSERT INTO Departamente(deptno,dname) VALUES(1,'Management');
INSERT INTO Departamente(deptno,dname) VALUES(2,'Resurse Umane');

delete from AngSkills;
Delete From Angajati;
DBCC CHECKIDENT('Angajati', RESEED, 0);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Popescu Adrian',1,1001,2,2);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Lavinia Gherasim',1,1000,2,3);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Cristiana Grigoriu',2,1003,3,NULL);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Irimia Daniel',2,1002,4,3);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Miron Cosmina',1,1003,3,2);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Alecsandru Brandusa',2,1003,1,3);

INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Adina Gherasim',2,1001,3,2);
INSERT INTO Angajati(ename,deptno,compno,oras,mgrid) VALUES('Dana Bostan',1,1001,2,1);

INSERT INTO AngSkills(empid,skillid) VALUES(2,2);
INSERT INTO AngSkills(empid,skillid) VALUES(2,3);
INSERT INTO AngSkills(empid,skillid) VALUES(2,4);
INSERT INTO AngSkills(empid,skillid) VALUES(2,5);

INSERT INTO AngSkills(empid,skillid) VALUES(1,6);
INSERT INTO AngSkills(empid,skillid) VALUES(1,3);
INSERT INTO AngSkills(empid,skillid) VALUES(1,4);

INSERT INTO AngSkills(empid,skillid) VALUES(3,5);
INSERT INTO AngSkills(empid,skillid) VALUES(3,6);
INSERT INTO AngSkills(empid,skillid) VALUES(3,7);

INSERT INTO AngSkills(empid,skillid) VALUES(4,5);
INSERT INTO AngSkills(empid,skillid) VALUES(4,6);

INSERT INTO AngSkills(empid,skillid) VALUES(5,1);
INSERT INTO AngSkills(empid,skillid) VALUES(5,2);

INSERT INTO AngSkills(empid,skillid) VALUES(6,1);
INSERT INTO AngSkills(empid,skillid) VALUES(6,2);

