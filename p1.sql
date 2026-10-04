use etudiant;
CREATE table etudiants(
    id int PRIMARY key,
    nom VARCHAR(20),
    filière VARCHAR(20)
);
CREATE table livre(
    id int PRIMARY KEY,
    titre VARCHAR(20),
    catégorie VARCHAR(20)
);
CREATE Table emprunts(
    id_etudiant_livre int PRIMARY key,
    id_etudiant int,
    FOREIGN key  (id_etudiant) REFERENCES etudiants(id),
    -- id_livre int,
    -- Foreign Key (id_livre) REFERENCES livre(id),
    duree DATETIME 
);
DESCRIBE emprunts;
ALTER TABLE emprunts add id_livre int;
ALTER TABLE emprunts add FOREIGN key(id_livre) REFERENCES livre(id);
INSERT INTO etudiants(id,nom,filière) VALUES(0,'Bachir','Maths'),(3,'Modou','Maths'),
(4,'Awa','Maths');
INSERT INTO livre(id,titre,catégorie)VALUES(0,'Mor_lam','Societe'),(2,'Vol_de_nuit','Educatif'),
(3,'Une_vie_de_boy','Societe');
INSERT INTO emprunts(id_etudiant_livre,id_etudiant,id_livre,duree) VALUES(0,3,3,'2020-04-19'),(1,0,2,'2020-05-19'),
(2,4,0,'2021-02-17');
select id from livre;
SELECT id from etudiants;
SHOW CREATE TABLE emprunts;