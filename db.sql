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

alter table employe
add constraint PK_EMP PRIMARY KEY (no_employe);

CREATE TABLE service(
  no_serv INT not null,
  nom_serv VARCHAR(50),
  ville VARCHAR(50));

alter table service
add constraint PK_SERV PRIMARY KEY (no_serv);

insert INTO employe  values (1000,'LEROY','Paul','PRESIDENT DE SOCIETTE',
'1987-10-25',55005.5,null,null,1);
insert INTO employe  values (1001,'DELMOTTE','virginie','SECRETAIRE DE DIRECTION',
'1990-05-15',35000,'PRESIDENT DU SOCIETE',1000,1);

insert into service values (1,'Direction', 'Paris');
insert into service values (2,'Logistique', 'Seclin');
insert into service values ( 3, 'ventes','Roubaix');
insert into service values ( 4, 'formation','Lille');
insert into service values ( 5, 'informatique','L');
