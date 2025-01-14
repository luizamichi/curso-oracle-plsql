--
-- Curso: Oracle PL/SQL Especialista (do básico ao avançado) 2023
-- Seção: 09 - Estruturas de controle
-- Aula: 01 - Operadores PL/SQL e regra de precedência
-- Autor: Emílio Scudero
-- Identificador: 028
-- Tempo: 8m
--


-- Regra de precedência
--------------------------------------------------------------------------
-- Ordem -- Operador                                                    --
--------------------------------------------------------------------------
-- 1     -- **                                                          --
-- 2     -- +, - (sinais)                                               --
-- 3     -- *, /                                                        --
-- 4     -- +, -, ||                                                    --
-- 5     -- =, <, >, <=, >=, <>, !=, ~=, ^=, BETWEEN, IN, IS NULL, LIKE --
-- 6     -- AND                                                         --
-- 7     -- NOT                                                         --
-- 8     -- OR                                                          --
--------------------------------------------------------------------------


-- Operadores PL/SQL - Com erro no cálculo devido ao mal uso da regra de precedência

SET SERVEROUTPUT ON
DECLARE
  v_nota1 NUMBER(11, 2) := 7.0;
  v_nota2 NUMBER(11, 2) := 6.0;
  v_nota3 NUMBER(11, 2) := 9.0;
  v_nota4 NUMBER(11, 2) := 6.0;
  v_media NUMBER(11, 2);
BEGIN
  v_media := v_nota1 + v_nota2 + v_nota3 + v_nota4 / 4;
  DBMS_OUTPUT.PUT_LINE('Média: ' || v_media);
END;


-- Corrigindo o cálculo da média sobrepondo a regra de precedência utilizando parênteses

SET SERVEROUTPUT ON
DECLARE
  v_nota1 NUMBER(11, 2) := 7.0;
  v_nota2 NUMBER(11, 2) := 6.0;
  v_nota3 NUMBER(11, 2) := 9.0;
  v_nota4 NUMBER(11, 2) := 6.0;
  v_media NUMBER(11, 2);
BEGIN
  v_media := (v_nota1 + v_nota2 + v_nota3 + v_nota4) / 4;
  DBMS_OUTPUT.PUT_LINE('Média: ' || v_media);
END;