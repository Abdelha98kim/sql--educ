CREATE DATABASE GestionBde;

USE GestionBde;
CREATE TABLE bde (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    date_adhesion DATE NOT NULL
    
);

INSERT INTO bde VALUES (1, "bde 2024", "2024-10-05");

CREATE TABLE membres (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    roles VARCHAR(50) NOT NULL,
    date_adhesion DATE NOT NULL
);

INSERT INTO membres VALUES (1, "Kroud", "Abdelillah", "kroud.bde@gmail.com", "mem", "2024-10-19");

CREATE TABLE roles (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

INSERT INTO roles VALUES (1, "mem");

CREATE TABLE evenements (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    date DATE NOT NULL,
    heure TIME NOT NULL,
    lieu VARCHAR(255) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL
);

INSERT INTO evenements VALUES (1, "hackme", "hackme et un evenement special", "2024-10-19", "12:00", "Youssofia-123-youcode", 1200.63);

CREATE TABLE participants (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    statut VARCHAR(50) NOT NULL
);

INSERT INTO participants VALUES (1, "Baalla", "Abdelhakim", "abdelhakimbaalla50@gmail.com", "Etudiant");

CREATE TABLE sponsors (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    contact_principal VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(20),
    montant NUMERIC(10, 2) NOT NULL
);

INSERT INTO sponsors VALUES (1, "simplon", "simploncont", "simplon.co@gmail.com", "0000000000", 12345.12);




-- Afficher tous les membres du BDE avec leur rôle et leur date d’adhésion.
SELECT * FROM membres;

-- Lister tous les événements prévus après une date donnée.
SELECT nom, description FROM evenements WHERE date > "2025-01-01";

-- Afficher les informations des événements ayant un budget supérieur à 5000 MAD.
SELECT * FROM evenements WHERE budget > 5000;

-- Afficher les sponsors qui ont contribué à des événements ayant un budget supérieur à 3500 MAD.
SELECT * FROM sponsors WHERE montant > 3500;

-- Compter le nombre total d’événements organisés par le BDE.
SELECT COUNT(*) AS total_evenement FROM evenements;

-- Calculer la moyenne du budget des événements organisés.
SELECT AVG(budget) AS moyenne_budget FROM evenements;

-- Lister les événements qui se déroulent dans un lieu donné.
SELECT * FROM evenements WHERE lieu LIKE "%youcode%";

-- Afficher les 5 derniers événements organisés par le BDE.
SELECT * FROM evenements ORDER BY id DESC LIMIT 5;

-- Lister les membres du BDE qui ont rejoint avant une date donnée.
SELECT * FROM membres WHERE date_adhesion < "2025-01-01";