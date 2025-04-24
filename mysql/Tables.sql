1.CREATE TABLE DEPT
     (DEPTNO INT(30) PRIMARY KEY,
     DNAME VARCHAR(14),
     LOC VARCHAR(13));

2.CREATE TABLE EMP
   (	EMPNO INT (30)  PRIMARY KEY, 
	ENAME VARCHAR(10), 
	JOB VARCHAR(9), 
	MGR INT(40), 
	HIREDATE DATE, 
	SAL FLOAT, 
	COMM INT(30), 
	DEPTNO INT(20),
CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO)
	  REFERENCES DEPT(DEPTNO) );

3.CREATE  TABLE BONUS 
   (	ENAME VARCHAR(10), 
	JOB VARCHAR(9), 
	SAL INT, 
	COMM INT
   );	  
4.CREATE TABLE SALGRADE
   (	GRADE INT, 
	LOSAL INT, 
	HISAL INT
   );

--[Parent(DEPT) Table of EMP Table]INSERT DATA INTO DEPT TABLE FIRST THEN EMP TABLE-
 INSERT  INTO dept (deptno, dname, loc) VALUES (10,'ACCOUNTING','NEWYORK');  
  INSERT  INTO dept(deptno, dname, loc) VALUES (20,'RESEARCH','DALLAS');
  INSERT  INTO dept (deptno, dname, loc) VALUES (30, 'SALES','CHICAGO');   
  INSERT  INTO dept (deptno, dname, loc) VALUES (40, 'OPERATIONS','BOSTON');

//inserting the values
INSERT INTO EMP  (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7369, 'SMITH','CLERK',7902,'1980-12-17',800.00,null,20);
  
INSERT INTO EMP(empno, ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7499, 'ALLEN','SALESMAN',7698,'1981-02-20',1600.00,300.00,30);
  
INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7521, 'WARD','SALESMAN',7698,'1981-02-22',1250.00,500.00,30);
    
INSERT INTO EMP(empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7566, 'JONES','MANAGER',7839,'1981-4-2',2975.00,null,20);
  
INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7654, 'MARTIN','SALESMAN',7698,'1981-09-28',1250.00,1400.00,30);
  
INSERT INTO EMP(empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7698, 'BLAKE','MANAGER',7839,'1981-5-1',2850.00,null,30);
  
  INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7782, 'CLARK','MANAGER',7839,'1981-06-9',2450.00,null,10);
  
INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000.00,null,20);


INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7839,'KING','PRESIDENT',null,'1981-11-17',5000.00,null,10);

INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7844,'TURNER','SALESMAN',7698,'1981-9-8',1500.00,0.00,30);

INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7876,'ADAMS','CLERK',7788,'1987-5-23',1100.00,null,20);

INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7900,'JAMES','CLERK',7698,'1981-12-3',950.00,null,30);


INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7902,'FORD','ANALYST',7566,'1981-12-3',3000.00,null,20);


INSERT INTO EMP (empno, ename, job,mgr,hiredate,sal,comm,deptno) VALUES (7934,'MILLER','CLERK',7782,'1982-1-23',1300.00,null,10);



  
 
  
[VIII]--INSERT DATA INTO SALGRADE TABLE:-

INSERT INTO salgrade(grade,losal,hisal)values(1,700,1200);

INSERT INTO salgrade(grade,losal,hisal)values(2,1201,1400);

INSERT INTO salgrade(grade,losal,hisal)values(3,1401,2000);

INSERT INTO salgrade(grade,losal,hisal)values(4,2001,3000);

INSERT INTO salgrade(grade,losal,hisal)values(5,3001,9999);
 