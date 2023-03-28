--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- CONVERSÃO DE DADOS -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- CONVERSÃO EXPLÍCITA: --------------------------------
--- TO_NUMBER: PERMITE A CONVERSÃO DE UMA STRING DE NÚMEROS PARA O FORMATO 
--- NUMÉRICO
-- NÚMERO INTEIRO: SEM INFORMAR UM FORMATO ESPECÍFICO:
SELECT TO_NUMBER('1234')
  FROM DUAL;

-- NÚMERO INTEIRO: INFORMANDO UM FORMATO ESPECÍFICO:
SELECT TO_NUMBER('1234', '9999')
  FROM DUAL;

-- NÚMERO DECIMAL: SEM INFORMAR UM FORMATO ESPECÍFICO:
SELECT TO_NUMBER('1234,99')
  FROM DUAL;

-- NÚMERO DECIMAL: INFORMANDO UM FORMATO ESPECÍFICO:
SELECT TO_NUMBER('1234.99', '9999.99')
  FROM DUAL;
