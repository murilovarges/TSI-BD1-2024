
-- DELETAR O BANCO
DROP DATABASE IF EXISTS correios;

-- CRIAÇÃO DO BANCO DE DADOS COM CONFIGURAÇÃO DE ACENTOS
 CREATE DATABASE correios
 DEFAULT CHARSET = utf8 
 DEFAULT COLLATE = utf8_general_ci;

 -- SELECIONAR O BANCO DE DADOS
 USE correios;

 -- CRIAÇÃO TABELA CIDADE
 CREATE TABLE caixa_postal
 (    
    codigo_postal VARCHAR(8)  NOT NULL,
    localidade          VARCHAR(45) NOT NULL,
    PRIMARY KEY (codigo_postal)
 );

 CREATE TABLE pessoa
 (    
    codigo        INT NOT NULL AUTO_INCREMENT,
    cpf           VARCHAR(11) NOT NULL UNIQUE,
    nome          VARCHAR(60) NOT NULL, 
    idade         INT CHECK (idade > 0),
    codigo_postal VARCHAR(8) NOT NULL,    
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_postal) REFERENCES caixa_postal (codigo_postal)
 );

 CREATE TABLE telefone
 (    
    codigo           INT NOT NULL,
    tel_residencial  VARCHAR(15),
    tel_celular      VARCHAR(15),
    tel_comercial    VARCHAR(15),
    tel_recado       VARCHAR(15) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo) REFERENCES pessoa (codigo)
 );


