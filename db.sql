DROP DATABASE STUDI;
CREATE DATABASE STUDI;
USE STUDI;

CREATE TABLE studi.employe(
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

alter table studi.service
add constraint PK_SERV PRIMARY KEY (no_serv);


INSERT INTO employe (no_employe,nom,prenom,emploi,sup,embauche,sal,comm,no_serv)values
(1000,'LEROY','Paul','PRESIDENT',null,'1987-10-25',55005.5,null,1),
(1100,'DELPIERRE','Dorothée',1000,'SECRETAIRE','1987-10-25',12351.24,null,1),
(1101,'DUMONT','Louis','VENDEUR',1300,'1987-10-25',11047.9,0,1),
(1102,"MINET","Marc","VENDEUR",1300,"1987-07-25",18085.81,17230,1),
(1104,"NYS ","Etienne","TECHNICIEN",1200,"1987-10-25",12342.23,null,1),
(1105,"DENIMAL","Jerome","COMPTABLE",1600,"1987-10-25",15746.57,null,1),
(1200,"LEMAIRE","Guy","DIRECTEUR",1000,"1987-03-11",36303.63,null,2),
(1201,"MARTIN","Jean","TECHNICIEN",1200,"1987-06-25",11235.12,null,2),
(1202,"DUPONT","Jacques","TECHNICIEN",1200,"1988-10-30",10313.03,null,2),
(1300,"LENOIR","Gerard","DIRECTEUR ",1000,"1987-01-25",31353.14,null,3),
(1301,"GERARD","Robert","VENDEUR",1300,"1999-04-12",9694.77,12430,3),
(1303,"MASURE","Emile","TECHNICIEN",1200,"1988-06-17",10451.05,null,3),
(1500,"DUPONT","Jean","DIRECTEUR",1000,"1987-10-03",28434.84,null,5),
(1501,"DUPIRE","Pierre","ANALYSTE",1500,"1984-10-24",23102.31,null,5),
(1502,"DURAND","Bernard","PROGRAMMEUR",1500,"1987-07-30",13201.24,null,5),
(1503,"DELNATTE","Luc","PUPITREUR",1500,"1999-01-15",12801.01,null,5),
(1600,"LAVARE","Paul","DIRECTEUR",1000,"1991-12-13",31238.12,null,6),
(1601,"CARON","Alain","COMPTABLE",1600,"1985-09-16",33003.3,null,6),
(1602,"DUBOIS","Jules","VENDEUR",1300,"1990-12-11",12520.95,35535,6),
(1603,"MOREL","Robert","COMPTABLE",1600,"1985-07-18",33003.3,null,6),
(1604,"HAVET","Alain","VENDEUR",1300,"1991-01-01",12388.94,33415,6),
(1605,"RICHARD","Jules","COMPTABLE",1600,"1985-10-22",33503.35,null,5),
(1615,"DUPREZ","Jean","BALAYEUR",1000,"1998-10-22",9000.6,null,5),
(1703,"PIRLO","Luca","TECHNICIEN",1700,"2007-07-18",20003.3,null,7),
(1704,"HADADI","Morad","VENDEUR",1700,"2015-01-01",13288.94,31415,7),
(1705,"COSTA","Ricardo","SUPERVISEUR",1700,"2001-10-22",22503.35,null,7),
(1700,"ADAMO","Laura","DIRECTEUR",1000,"2003-10-11",29000.6,null,7);

insert into service values (1,'Direction', 'Paris');
insert into service values (2,'Logistique', 'Seclin');
insert into service values ( 3, 'ventes','Roubaix');
insert into service values ( 4, 'formation','Lille');
insert into service values ( 5, 'informatique','L');
