--
-- Curso: Oracle PL/SQL Especialista (do básico ao avançado) 2023
-- Seção: 06 - Declaração de identificadores, variáveis e constantes
-- Aula: 02 - Declaração de identificadores (constantes)
-- Autor: Emílio Scudero
-- Identificador: 014
-- Tempo: 8m
--


-- Declarando uma constante do tipo NUMBER

SET SERVEROUTPUT ON
DECLARE
  -- Declaração de constante
  C_PI CONSTANT NUMBER(38, 15) := 3.141592653589793;
BEGIN
  -- Saída do valor de Pi
  DBMS_OUTPUT.PUT_LINE('Pi: ' || C_PI);
END;


-- Declarando constantes do tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON
DECLARE
  -- Declaração de constantes
  C_CARACTER_TAM_FIXO CONSTANT CHAR(2) := 'RS';
  C_CARACTER_TAM_VARIAVEL CONSTANT VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
  -- Saída das strings
  DBMS_OUTPUT.PUT_LINE('String - Caracteres de tamanho fixo: ' || C_CARACTER_TAM_FIXO);
  DBMS_OUTPUT.PUT_LINE('String - Caracteres de tamanho variável: ' || C_CARACTER_TAM_VARIAVEL);
END;


-- Declarando constantes do tipo DATE

SET SERVEROUTPUT ON
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YY HH24:MI:SS';
DECLARE
  -- Declaração de constantes
  C_DATA1 CONSTANT DATE := '29/04/20';
  C_DATA2 CONSTANT DATE := '29/04/2020';
BEGIN
  -- Saída das datas
  DBMS_OUTPUT.PUT_LINE('Data 1: ' || TO_CHAR(C_DATA1, 'DD/MM/YY HH24:MI:SS'));
  DBMS_OUTPUT.PUT_LINE('Data 2: ' || TO_CHAR(C_DATA2, 'DD/MM/YY HH24:MI:SS'));
END;