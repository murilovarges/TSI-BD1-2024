/*
REVISÃO DDL - DATA DEFINITION LANGUAGE
1. Criar um banco de dados chamado IFSP
2. Criar uma tabela "Cidade", 
   com os seguintes campos: id (PK, AI), nome (NN) e estado (NN)
3. Criar uma tabela "Cliente",
   com os seguintes campos: id (PK, AI), nome (NN), email (NN),
   id da cidade (FK),  endereco, 
   numero, bairro e data nascimento. 
 */

 -- CRIAÇÃO DO BANCO DE DADOS
 CREATE DATABASE IFSP;

 -- SELECIONAR O BANCO DE DADOS
 USE IFSP;

 -- CRIAÇÃO TABELA CIDADE
 CREATE TABLE cidade
 (
    id      INT AUTO_INCREMENT,
    nome    VARCHAR(100) NOT NULL,
    estado  VARCHAR(002) NOT NULL,
    PRIMARY KEY (id)
 );

-- CRIAÇÃO TABELA CLIENTE
 CREATE TABLE cliente
 (
    id          INT AUTO_INCREMENT,
    nome        VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL,
    id_cidade   INT,
    endereco    VARCHAR(100),
    numero      INT,
    bairro      VARCHAR(100),
    data_nasc   DATETIME,
    PRIMARY KEY (id),
    CONSTRAINT fk_cliente_cidade 
        FOREIGN KEY (id_cidade) REFERENCES cidade (id)
 );
