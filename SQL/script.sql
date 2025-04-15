-- CRIAÇÃO DO DATABASE "DB_ecommerce" --
CREATE DATABASE DB_ecommerce;

-- CRIAÇÃO DAS TABELAS PARA O BANCO DE DADOS --
CREATE TABLE tb_cliente(
( id_cliente SMALLINT IDENTITY NOT NULL PRIMARY KEY

, cpf VARCHAR(11) NOT NULL

, nome VARCHAR(255) NOT NULL

, data_nascimento DATE

, genero VARCHAR(1)

, endereco VARCHAR(500)

, bairro VARCHAR(100)

, cidade VARCHAR(100)

, uf VARCHAR(2)

, cep VARCHAR(8)

);

-- CRIAÇÃO TABELA DE EMAILS --
CREATE TABLE tb_email(
 id_email SMALLINT IDENTITY NOT NULL PRIMARY KEY

, id_cliente SMALLINT

, email VARCHAR(255) NOT NULL

, score INT

, FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)

);

-- CRIAÇÃO TABELA DE TELEFONE --
CREATE TABLE tb_telefone

( id_telefone SMALLINT IDENTITY NOT NULL PRIMARY KEY

, id_cliente SMALLINT

, ddd INT NOT NULL

, telefone INT NOT NULL

, score INT

, tipo_telefone VARCHAR(1) NOT NULL

, FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente)

);



