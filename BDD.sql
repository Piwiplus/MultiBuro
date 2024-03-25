/*------------------------------CREATION D'UNE BASE DE DONNEES--------------------------------------*/
/*TABLE UTILISATEUR*/
CREATE TABLE utilisateur
(
    id_utilisateur VARCHAR(4) NOT NULL,
    CONSTRAINT PK_utilisateur PRIMARY KEY (id_utilisateur)
);
/*TABLE RESSOURCE*/
CREATE TABLE ressource
(
    code VARCHAR(4) NOT NULL,
    CONSTRAINT PK_ressource PRIMARY KEY (code)
);
/*TABLE RESERVATION*/
CREATE TABLE reservation
(
    id_utilisateur VARCHAR(4) NOT NULL,
    code_ressource VARCHAR(4) NOT NULL,
    date_reservation DATE,
    CONSTRAINT PK_reservation PRIMARY KEY(id_utilisateur, code_ressource, date_reservation),
    CONSTRAINT FK_utilisateur FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    CONSTRAINT FK_ressource FOREIGN KEY(code_ressource) REFERENCES ressource(code)
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
INSERT INTO ressource(code_ressource)
VALUES  (0125);
INSERT INTO ressource(code_ressource)
VALUES  (0126);
INSERT INTO ressource(code_ressource)
VALUES  (0127);
INSERT INTO ressource(code_ressource)
VALUES  (0128);
INSERT INTO ressource(code_ressource)
VALUES  (0129);
/*----------------------------INSERTION DE DONNEES POUR UNE RESERVATION------------------------------*/
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,0129,"2024-01-24");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,0125,"2024-02-10");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0004,0128,"2023-12-26");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0001,0127,"2024-03-10");
INSERT INTO reservation(id_utilisateur,code_ressource,date_reservation)
VALUES  (0002,0126,"2024-02-28");
