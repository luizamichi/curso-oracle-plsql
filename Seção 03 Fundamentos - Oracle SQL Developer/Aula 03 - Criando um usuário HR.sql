--
-- Curso: Oracle PL/SQL Especialista (do básico ao avançado) 2023
-- Seção: 03 - Download e instalação do Oracle SQL Developer
-- Aula: 03 - Criando um usuário HR
-- Autor: Emílio Scudero
-- Identificador: 006
-- Tempo: 7m
--


/*
  No Oracle SQL Developer, conecte-se como usuário SYS utilizando a sua conexão para o usuário SYS
  Abra este script no Oracle SQL Developer e execute (F5)
*/

/*
  Configura a sessão para o Pluggable Database XEPDB1
*/

ALTER SESSION SET CONTAINER = XEPDB1;

/*
  Remove a conta do usuário HR e remove todos os seus objetos em cascata
*/

DROP USER HR CASCADE;

/*
  Cria a conta do usuário HR com a senha hr e concede os privilégios
*/

CREATE USER HR
IDENTIFIED BY hr
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE TEMP
QUOTA unlimited ON users
QUOTA 0 ON system;

GRANT CONNECT, RESOURCE TO HR;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE, CREATE PROCEDURE, CREATE TRIGGER TO HR;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, UNLIMITED TABLESPACE TO HR;