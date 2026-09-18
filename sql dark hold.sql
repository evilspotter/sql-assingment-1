create table emp (
    empno int primary key,
    ename varchar(20) not null,
    job varchar(20),
    mgr int null,
    hiredate date,
    sal decimal(10,2),
    comm decimal(10,2) null,
    deptno int
);
insert into emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) values
(7369, 'SMITH',  'CLERK',     7902, '1980-12-17',  800,  null, 20),
(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30),
(7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30),
(7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975,  null, 20),
(7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30),
(7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850,  null, 30),
(7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450,  null, 10),
(7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000,  null, 20),
(7839, 'KING',   'PRESIDENT', null, '1981-11-17', 5000,  null, 10),
(7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,    0, 30),
(7876, 'ADAMS',  'CLERK',     7788, '1983-01-12', 1100,  null, 20),
(7900, 'JAMES',  'CLERK',     7698, '1981-12-03',  950,  null, 30),
(7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000,  null, 20),
(7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300,  null, 10),
(8001, 'KARTHIK', 'CLARK',    7566, '1986-02-14', 3200,  200, 10),
(8002, 'KAVYA',   'DEVELOPER', 7566, '1987-07-19', 2700,  null, 20),
(8003, 'ARJUN',   'TESTER',   7698, '1989-03-11', 1800,  100, 30),
(8004, 'ELENA',   'ANALYST',  7566, '1979-11-05', 3500,  null, 20),
(8005, 'OMKAR',   'CLERK',    7782, '1988-02-28', 1400,  null, 10),
(8006, 'UMA',     'SALESMAN', 7698, '1985-08-16', 2200,  250, 30),
(8007, 'RAHUL',   'MANAGER',  7839, '1990-01-10', 4000,  null, 40),
(8008, 'ANITA',   'CLERK',    8007, '1984-10-25',  900,  null, 40),
(8009, 'KIRAN',   'ANALYST',  7566, '1986-02-02', 3200,  null, 20),
(8010, 'AMIT',    'CLERK',    7782, '1987-02-15', 1200,  null, 10),
(8011, 'ESWAR',   'DEVELOPER', 8007, '1983-06-30', 2600,  null, 40),
(8012, 'IRIS',    'TESTER',   8007, '1988-12-12', 1700,  150, 40),
(8013, 'SURESH',  'SALESMAN', 7698, '1981-03-18', 1550,  350, 30),
(8014, 'MAGESH',  'CLERK',    7788, '1982-05-21', 1000,  null, 20),
(8015, 'KUMAR',   'ANALYST',  7566, '1981-07-07', 3100,  null, 20),
(8016, 'RAJ',     'CLERK',    7698, '1989-09-09', 1350,  null, 30);

1)select ename from emp where sal*1.10>3000;
2) select ename, (sal*12)*1.10 as annual_salary from emp where mgr=7566;
3) select * from emp where ename like "K%S"
4) SELECT *  FROM emp WHERE hiredate BETWEEN '1980-01-01' AND '1987-01-01'
     AND ename NOT LIKE 'A%'  AND ename NOT LIKE 'E%'  AND ename NOT LIKE 'I%'
    AND ename NOT LIKE 'O%'  AND ename NOT LIKE 'U%';
5) select * from emp where ename REGEXP '^[AEIOUaeiou].*[^AEIOUaeiou]$';
6) select ename from emp where job="MANAGER";
7) select empno,ename from emp where comm is not null;
8) select ename from emp where deptno in (10,20);
9) select ename from emp where job="CLARK" and sal>3000;
10) select ename from emp where job in ("CLARK","SALESMAN","ANALYST") AND sal>2500;
11) select * from emp where YEAR(hiredate) not between 1980 and 1988;
12) select * from emp where deptno in (10,20,30) or job in ("CLERK","SALESMAN","ANALYST" );
13) select ename from emp where ename like 'S____';
14) select ename from emp where comm is null  and deptno in (10,20);
15) SELECT *, (sal * 12) AS annual_salary  FROM emp  WHERE job = 'MANAGER'    AND deptno IN (20, 30)    AND (sal * 12) > 12000;
16) select * from emp where MONTH(hiredate)=02
17) SELECT *, (sal * 12) AS annual_salary  FROM emp  WHERE ename like "M%S_"
18) select ename, hiredate from emp where hiredate between "1981-01-01" and "1981-12-31";
19) select * from emp where job="SALESMAN";
20) SELECT * from  emp where deptno in (10,20);
21) select *, (sal*6) as halfterm_salary from emp where (sal*6)>5000 and ename REGEXP '^[AEIOUaeiou]';
22) select * from emp where job!="MANAGER" AND sal between 1000 and 2000;
23) select ename from emp where job in ("CLERK","PRESIDENT");
24) SELECT * FROM emp where sal between 0 and 1400;
25) select ename from emp where deptno in (10) and ename like "_M%";
26) SELECT max(sal) from emp where deptno in (30,20);
27) select ename from emp where sal < (SELECT sal from emp where ename = "SMITH");
28) select min(sal) as min_sal ,deptno from emp group by deptno;
29) select job,count(*) from emp group by job having  count(*) between 3 and 5;
30)  select job,count(*) from emp where job!="SALESMAN" group by job;
31) SELECT *  FROM emp  WHERE sal IN (  SELECT sal  FROM emp      GROUP BY sal      HAVING COUNT(sal) > 1 );
32) select ename,count(*) from emp group by ename having count(*)>1;
33) select avg(sal) from emp where deptno!=10;
34) SELECT ename, (sal + COALESCE(comm, 0)) AS total_salary FROM emp WHERE sal > 2500;
35) select job ,avg(sal*12) as avg_sal from emp group by job having avg(sal*12) between 30000 and 60000;
36) SELECT *  FROM emp  ORDER BY deptno ASC, sal DESC;
37) select * from emp order by job asc,ename asc;
38) select * from emp where (sal*12) >30000 order by sal desc;
39) select * from emp where deptno=10 order by hiredate asc;
40) select ename,job from emp order by job desc,sal asc;


