CREATE TABLE People(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int,  
    PRIMARY KEY (id)  
);  

INSERT INTO People VALUES  
(1, 'Joseph', 'Developer', 30),  
(2, 'Mike', 'Leader', 28),  
(3, 'Stephen', 'Scientist', 45); 
 
select * from People;
INSERT INTO People (name, occupation, age) VALUES ('Raju','Engineer',28);
INSERT INTO People (name, occupation) VALUES ('Laxman','Teacher'),('vijay','Doctor');

/------------- Update Query ----

UPDATE  People
SET  occupation = 'Leader'
where id = 7;

UPDATE People  
SET name = 'santosh', occupation = 'Content Writer'  
WHERE id = 3; 

/ ------------- Delete Query ------------

DELETE FROM People WHERE id = 6;  

 DELETE FROM People ORDER BY name LIMIT 3;  

/ ------------- Select Query ------------

SELECT name  FROM People;
SELECT occupation  FROM People;
SELECT name, occupation FROM People; 
select * from People;

/ ---------- Where Clause ---------
SELECT *  
FROM people 
WHERE occupation = 'Leader';  

SELECT *  
FROM people  
WHERE occupation = 'Leader'  
AND id = 2; 

SELECT *  
FROM people  
WHERE occupation = 'Leader'  or occupation = 'Engineer' ;

SELECT *  
FROM people  
WHERE occupation = 'Leader'  and occupation = 'Engineer'
or id < 5 ;

/ ------------ DISTINCT Clause -------------

SELECT DISTINCT  occupation 
FROM people;  
SELECT DISTINCT occupation, id  
FROM people;  

/------------- From Clause ----------

SELECT *  
FROM people 
WHERE id <= 3;  

/------------- ORDER BY Clause ----------

SELECT *  
FROM people 
WHERE occupation = 'Leader'  
 ORDER BY occupation;  
 
 SELECT *  
FROM people 
WHERE occupation = 'Leader'  
 ORDER BY name asc;  
 
  SELECT *  
FROM people 
WHERE occupation = 'Leader'  
 ORDER BY name Desc;
 
SELECT *  
FROM people 
WHERE  id < 5 
 ORDER BY name  Desc, occupation asc; 
 
 Alter table people
 add column Address varchar(20);
 select * from people;
 
  SELECT *  
FROM people ;
 
 UPDATE  People
SET  Address = 'Delhi'
where id = 8;
 
/---------- Group By Clause --------- 

 SELECT Address, COUNT(*)  
FROM   people   
GROUP BY Address;  


/ ---------- And Condition ------------

SELECT *  
FROM people 
WHERE name = 'Raju'  
AND id > 3;  

/ ---------- OR Condition ------------
SELECT *  
FROM people  
WHERE name = 'Laxman'  
OR id > 100; 

/ ---------- And  OR Condition ------------
SELECT *  
FROM people 
WHERE (name = 'Laxman' AND name = 'Mike')  
OR (id < 5);  


 Alter table people
 add column pass boolean;
 select * from people;
 desc people;
 
Alter table people
 drop column pass;
 
 /---------------- Boolean condition -------
 CREATE TABLE students (  
    studentid INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(40) NOT NULL,  
    age VARCHAR(3),  
    pass BOOLEAN  
);  

INSERT INTO students(name, pass) VALUES('Manish',2);  
INSERT INTO students(name, pass) VALUES('Raju',3);  
INSERT INTO students(name, pass) VALUES('Nilesh',2);  
INSERT INTO students(name, pass) VALUES('Payal',0);  
select * from students;

SELECT  studentid, name, 
IF(pass, 'true', 'false') completed 
FROM students; 

SELECT studentid, name, pass 
FROM students
 WHERE pass is TRUE;  
 
 
 /---------- Like condition ------------
SELECT name
FROM people
WHERE Address LIKE 'D%'; 

SELECT name  
FROM people  
WHERE Address LIKE 'Mum_ai';

SELECT name  
FROM people 
WHERE Address NOT LIKE 'Lon%'; 

/ ---------- IN  condition ----------
SELECT *  
FROM people  
WHERE name IN ('Raju', 'Mike', 'vijay');  

SELECT *  
FROM people  
WHERE name = 'Raju'  
OR name = 'Mike'  
OR name = 'vijay';  

/ ---------- Between  condition ----------

SELECT *  
FROM people  
WHERE id BETWEEN 1 AND 3;  

/ ---------- Not Null  condition ----------
SELECT *  
FROM people  
WHERE name IS NOT NULL;  

/ ---------- IS NULL condition ----------

SELECT *  
FROM people
WHERE name IS NULL;  

/ ---------- Not  condition ----------
SELECT *  
FROM people  
WHERE name NOT IN ('Raju', 'Mike', 'vijay');  

SELECT *  
FROM people  
WHERE name IS NOT NULL;  

SELECT *  
FROM people  
WHERE name NOT LIKE 'A%';  

SELECT *  
FROM people  
WHERE id NOT BETWEEN 3 AND 5;  

SELECT * FROM people WHERE Address <> "london"; 
SELECT * FROM people WHERE Address != "london";