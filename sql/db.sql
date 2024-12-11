CREATE DATABASE GestionBde;

USE GestionBde;
CREATE TABLE bde (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    date_adhesion DATE NOT NULL
    
);

CREATE TABLE membres (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    roles VARCHAR(50) NOT NULL,
    date_adhesion DATE NOT NULL
);

CREATE TABLE roles (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE evenements (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    date DATE NOT NULL,
    heure TIME NOT NULL,
    lieu VARCHAR(255) NOT NULL,
    budget DECIMAL(10, 2) NOT NULL
);

CREATE TABLE participants (
    id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    statut VARCHAR(50) NOT NULL
);

CREATE TABLE sponsors (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    contact_principal VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(20),
    montant NUMERIC(10, 2) NOT NULL
);


