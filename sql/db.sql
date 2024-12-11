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


INSERT INTO participants VALUES (1, "simplon", "simplon.co", "simplon.co@gmail.com", "+2120-000-000-00", 1500000);


