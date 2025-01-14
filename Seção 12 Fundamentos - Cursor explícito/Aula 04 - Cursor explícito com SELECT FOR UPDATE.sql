--
-- Curso: Oracle PL/SQL Especialista (do básico ao avançado) 2023
-- Seção: 12 - Cursor explícito
-- Aula: 04 - Cursor explícito com SELECT FOR UPDATE
-- Autor: Emílio Scudero
-- Identificador: 047
-- Tempo: 8m
--


SET SERVEROUTPUT ON
SET VERIFY OFF
DECLARE
  CURSOR employees_cursor (p_job_id IN VARCHAR2) IS
    SELECT *
      FROM employees
     WHERE job_id = p_job_id
       FOR UPDATE;
BEGIN
  FOR employees_record IN employees_cursor('AD_VP') LOOP
    UPDATE employees
       SET salary = salary * (1 + 10 / 100)
     WHERE CURRENT OF employees_cursor;
  END LOOP;

  COMMIT;
END;