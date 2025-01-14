--
-- Curso: Oracle PL/SQL Especialista (do básico ao avançado) 2023
-- Seção: 19 - Packages de banco de dados
-- Aula: 02 - Criando package specification
-- Autor: Emílio Scudero
-- Identificador: 066
-- Tempo: 7m
--


CREATE OR REPLACE PACKAGE pkg_empregados IS
  g_min_salary employees.salary%TYPE;

  PROCEDURE prc_insere_empregado (
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_email IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_hire_date IN DATE DEFAULT SYSDATE,
    p_job_id IN VARCHAR2,
    p_salary IN NUMBER,
    p_commicion_pct IN NUMBER,
    p_manager_id IN NUMBER,
    p_department_id IN NUMBER
  );

  PROCEDURE prc_aumenta_salario_empregado (
    p_employee_id IN NUMBER,
    p_percentual IN NUMBER
  );

  FUNCTION fnc_consulta_salario_empregado (
    p_employee_id IN NUMBER
  ) RETURN NUMBER;
END pkg_empregados;