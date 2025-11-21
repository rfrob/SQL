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
'1987-10-25',55005.5,null,1);
insert INTO employe  values (1100,'DELPIERRE','Dorothée','SECRETAIRE DE DIRECTION',
'1987-10-25',12351.24,null,1);
insert INTO employe values (1101,"DUMONT","Louis","VENDEUR","1987-10-25",11047.9,0,1);
Insert INTO employe values (1102,"MINET","Marc","VENDEUR","1987-07-25",18085.81,17230,1);
Insert INTO employe values (1104,"NYS ","Etienne","TECHNICIEN","1987-10-25",12342.23,null,1);
Insert INTO employe values (1105,"DENIMAL","Jerome","COMPTABLE","1987-10-25",15746.57,null,1);
Insert INTO employe values (1200,"LEMAIRE","Guy","DIRECTEUR","1987-03-11",36303.63,null,2);
Insert INTO employe values (1201,"MARTIN","Jean","TECHNICIEN","1987-06-25",11235.12,null,2);
Insert INTO employe values (1202,"DUPONT","Jacques","TECHNICIEN","1988-10-30",10313.03,null,2);
Insert INTO employe values (1300,"LENOIR","Gerard","DIRECTEUR ","1987-01-25",40234.23,null,3);

insert into service values (1,'Direction', 'Paris');
insert into service values (2,'Logistique', 'Seclin');
insert into service values ( 3, 'ventes','Roubaix');
insert into service values ( 4, 'formation','Lille');
insert into service values ( 5, 'informatique','L');
