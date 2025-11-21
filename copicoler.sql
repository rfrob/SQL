DROP DATABASE STUDI;
CREATE DATABASE STUDI;
USE STUDI;
CREATE TABLE employe(
  no_employe INT not null,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  emploi VARCHAR(20),
  embauche DATE,
  sal FLOAT,
  sup INT,
  comm FLOAT,
  no_serv INT);
  ALTER TABLE employe
  ADD CONSTRAINT PK_EMP PRIMARY KEY (no_employe);
CREATE TABLE service(
  no_serv INT not null, 
  nom_serv VARCHAR(50),
  ville VARCHAR(50));

ALTER TABLE service
ADD CONSTRAINT PK_SERV PRIMARY KEY (no_serv);   
Insert INTO employe values (1000,'LEROY','Paul','PRESIDENT','1987-10-25',55005.5,null,1);