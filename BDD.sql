CREATE DATABASE bdd_Multiburo DEFAULT CHARSET=utf8;
use bdd_Multiburo;

DROP TABLE IF EXISTS `utilisateur`;
DROP TABLE IF EXISTS `ressource`;
DROP TABLE IF EXISTS `reservation`;
/*------------------------------CREATION D'UNE BASE DE DONNEES--------------------------------------*/
/*TABLE UTILISATEUR*/
CREATE TABLE utilisateur
(
    id_utilisateur VARCHAR(4),
    CONSTRAINT PK_utilisateur PRIMARY KEY (id_utilisateur)
);
/*TABLE RESSOURCE*/
CREATE TABLE ressource
(
    codeR VARCHAR(4),
    libelleR VARCHAR(40),UNIQUE,
    typeR VARCHAR(2),
    capaciteR INTEGER(3),CHECK capaciteR>0,
    tarifJourR DECIMAL(5,2),
    CONSTRAINT PK_ressource PRIMARY KEY (codeR)
);
/*TABLE RESERVATION*/
CREATE TABLE reservation
(
    id_utilisateur VARCHAR(4),
    code_ressource VARCHAR(4),
    date_reservation DATE,
    CONSTRAINT PK_reservation PRIMARY KEY(id_utilisateur, code_ressource, date_reservation),
    CONSTRAINT FK_utilisateur FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    CONSTRAINT FK_ressource FOREIGN KEY(code_ressource) REFERENCES ressource(codeR)
);
/*-----------------------------------AJOUT D'UN JEU DE DONNEES-------------------------------------*/
INSERT INTO utilisateur(id_utilisateur)
VALUES  (0001);
INSERT INTO utilisateur(id_utilisateur)
VALUES  (0002);
INSERT INTO utilisateur(id_utilisateur)
VALUES  (0003);
INSERT INTO utilisateur(id_utilisateur)
VALUES  (0004);
INSERT INTO utilisateur(id_utilisateur)
VALUES  (0005);
INSERT INTO ressource(codeR, libelleR, typeR, capaciteR, tarifJourR)
VALUES  ('301','SLAM','SC',20,70.5);
INSERT INTO ressource(codeR, libelleR, typeR, capaciteR, tarifJourR)
VALUES  ('302','SISR','SC',25,45.698);
INSERT INTO ressource(codeR, libelleR, typeR, capaciteR, tarifJourR)
VALUES  ('303','cejm','SC',23,100);
INSERT INTO ressource(codeR, libelleR, typeR, capaciteR, tarifJourR)
VALUES  ('304','Anglais','SC',10,98);
INSERT INTO ressource(codeR, libelleR, typeR, capaciteR, tarifJourR)
VALUES  ('305','culture G','SC',30,102.15);
/*----------------------------INSERTION DE DONNEES POUR UNE RESERVATION------------------------------*/
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,'301',"2024-01-24");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,'302',"2024-02-10");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0004,'303',"2023-12-26");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,'304',"2024-03-10");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0002,'305',"2024-02-28");
