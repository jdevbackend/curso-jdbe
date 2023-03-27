--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------- FUNÇÕES DE DATA -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- MONTHS_BETWEEN: TRAZ A DIFERENÇA EM MESES ENTRE DUAS DATAS
SELECT SYSDATE AS "DATA_ATUAL",
       MONTHS_BETWEEN('20/12/2023',SYSDATE) "DIFERENCA_ENTRE_DATA"
  FROM DUAL;
  
-- ADD_MONTHS: ADICIONA UMA QUANTIDADE DE MESES À UMA DATA
SELECT SYSDATE AS "DATA_ATUAL",
       ADD_MONTHS(SYSDATE, 6) AS "DATA_MAIS_6_MESES"
  FROM DUAL;
  
-- NEXT_DAY: RETORNA QUAL A PRÓXIMA DATA EM RELAÇÃO AO DIA DA SEMANA
SELECT SYSDATE AS "DATA_ATUAL",
       NEXT_DAY(SYSDATE, 'FRIDAY') AS "PROXIMA_DATA"
  FROM DUAL;
  
-- LAST_DAY: TRAZ QUAL É O ULTIMO DIA DO MES EM RELAÇÃO À UMA DATA
SELECT LAST_DAY(SYSDATE-30)
  FROM DUAL;