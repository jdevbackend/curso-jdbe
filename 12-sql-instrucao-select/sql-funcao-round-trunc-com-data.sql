--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- ROUND E TRUNC COM DATAS --------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ROUND COM DATA
SELECT SYSDATE AS "DATA_ATUAL",
       ROUND(SYSDATE, 'MONTH') "ARREDONDAMENTO_MES",
       ROUND(SYSDATE, 'YEAR') "ARREDONDAMENTO_ANO"
  FROM DUAL;

-- TRUNC COM DATA
SELECT SYSDATE AS "DATA_ATUAL",
       TRUNC(SYSDATE, 'MONTH') AS "TRUNC_POR_MES",
       TRUNC(SYSDATE, 'YEAR') AS "TRUNC_POR_ANO"
  FROM DUAL;