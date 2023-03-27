--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- CONVERSÃO DE DADOS -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- CONVERSÃO EXPLÍCITA: --------------------------------
-- TO_CHAR: CONVERTER TIPOS DE DADOS NUMÉRICOS E E DATA PARA UM FORMATO 
-- ESPECÍFICO EM VARCHAR
--------------------------------------------------------------------------------
-- CONVERSÃO DE FORMATO DATA PARA STRING/VARCHAR
SELECT TO_CHAR(SYSDATE, 'DD/MM/RRRR')
  FROM DUAL;

SELECT TO_CHAR(SYSDATE, '"dia" DD "de" MONTH "de" RRRR')
  FROM DUAL;
  
SELECT TO_CHAR(SYSDATE, 'MM/RRRR')
  FROM DUAL;
  
SELECT TO_CHAR(SYSDATE, '"dia" DD "de" MONTH "de" RRRR "agora são" HH24:MI:SS')
  FROM DUAL;
  
SELECT TO_CHAR(SYSDATE + 12/24,'HH12:MI:SS'),
       TO_CHAR(SYSDATE + 12/24,'HH24:MI:SS')
  FROM DUAL;
  
-- CONVERSÃO DE FORMATO NUMÉRICO PARA STRING/VARCHAR
SELECT TO_CHAR(1234.94, '$09999.990')
  FROM DUAL;