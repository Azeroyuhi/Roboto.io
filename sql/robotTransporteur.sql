CREATE DATABASE IF NOT EXISTS robotTransporteur;
USE robotTransporteur;


--Création des tables--

--Tbale Trajet--

CREATE TABLE trajet (
  idTrajet int(10) NOT NULL AUTO_INCREMENT,
  zoneDepart int NOT NULL,
  zoneArrivee int NOT NULL,
  autonomieDepart int NOT NULL,
  autonomieArrivee int NOT NULL,
  etatTrajet int NOT NULL,
  horodatage time NOT NULL,
  PRIMARY KEY (idTrajet)
);

--Tbale Commande--

CREATE TABLE commande (
  idCommande int(10) NOT NULL AUTO_INCREMENT,
  nbCommande int NOT NULL,
  type_commande VARCHAR NOT NULL,
  PRIMARY KEY (idCommande)
);

--Tbale Robot--

CREATE TABLE robot (
  idRobot int(10) NOT NULL AUTO_INCREMENT,
  numéro_robot int NOT NULL,
  autonomie_batterie int NOT NULL,
  etatRobot int NOT NULL,
  PRIMARY KEY (idRobot)
);

--Tbale Chemins--

CREATE TABLE chemins (
  idChemins int(10) NOT NULL AUTO_INCREMENT,
  etape_cheminint VARCHAR(255) NOT NULL,
  PRIMARY KEY (idChemins)
);

--!--
INSERT INTO trajet (idTrajet, zoneDepart, zoneArrivee, etatTrajet) VALUES
(1, 1001, 1003, 0),
(2, 1002, 1004, 1),
(3, 1004, 1006, 0);


--!--
INSERT INTO commande (nbCommande, type_commande) VALUES
(1, 'Livraison express'),
(2, 'Retrait de colis'),
(3, 'Livraison standard');


--!--
INSERT INTO robot (numéro_robot, autonomie_batterie, etatRobot) VALUES
(1, 100,0),
(2, 80,1),
(3, 90,0);

--!--
INSERT INTO chemins (etape_cheminint) VALUES
('1, 3, 5, 7, 9'),
('2, 4, 6, 8, 10'),
('1, 2, 3, 4, 5, 6, 7, 8, 9, 10');