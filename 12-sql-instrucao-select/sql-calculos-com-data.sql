--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- CALCULOS ARITMÉTICOS COM DATA --------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT SYSDATE AS "DATA_ATUAL",
       (SYSDATE + 7) "DATA_MAIS_SETE_DIAS"
  FROM DUAL;
  

SELECT SYSDATE AS "DATA_ATUAL",
       (SYSDATE - 7) "DATA_MENOS_SETE_DIAS"
  FROM DUAL;


SELECT SYSDATE - (SYSDATE - 7) "DIF_DIAS_ENTRE_DATAS"
  FROM DUAL;
  
  
SELECT TO_CHAR(SYSDATE, 'DD/MM/RR HH24:MI:SS') "DATA_HORA_ATUAL", 
       TO_CHAR((SYSDATE + 10/24), 'DD/MM/RR HH24:MI:SS') "DATA_MAIS_10_HORAS"
  FROM DUAL;