-- criando um banco de dados 

CREATE DATABASE sitemadeacademia;

-- exibir se o banco de dados

 show database;

--  deletar um banco de dados

DROP DATABASE

-- usar o banco de dados que vou criar tabelas  e dados na sequência 

USE DATABASE sistemadeacademia;

-- criando tabelas no banco de dados

CREATE TABLE cadastrocliente(

   cpf CHAR(15) primary key NOT NULL,
   nomecompleto VARCHAR(200) NOT NULL,
   datadenascimento DATE NOT NULL,
   email VARCHAR(50) UNIQUE NOT NULL,
   CELULAR INT(15) NOT NULL,
   cep INT(8) NOT NULL,
   rua VARCHAR(50) NOT NULL,
   numero CHAR(8) NOT NULL,
   completo VARCHAR(50),
   bairro CHAR(20) NOT NULL,
   cidade  VARCHAR(50) NOT NULL,
   estado CHAR(20) NOT NULL


);

-- adicionando um atributi na tabela cadastro do cliente

ALTER TABLE cadastrocliente

ADD instagran VARCHAR(50);

-- excluindo um artibuto da tabela com alter

ALTER TABLE cadastrocliente

DROP COLUMN instagran;


-- renomeando um atributo da coluna

ALTER TABLE cadastrocliente

RENAME COLLUMN nomecompleto to nomeesobrenome;

-- alterando o data type de uma coluna

ALTER TABLE cadastrocliente

ALTER COLUMN nomeesobrenome VARCHAR(250) NOT NULL;

-- DELETANDO A TABELA TODA 

DROP TABLE cadastrocliente;