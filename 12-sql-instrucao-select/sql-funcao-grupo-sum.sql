--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- SUM ----------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT COUNT(*) AS QTD_PROFESSORES,
       VL_SALARIO AS VL_SALARIO_INDIVIDUAL, 
       SUM(VL_SALARIO) AS TOTAL_SALARIO, 
       AVG(VL_SALARIO) AS MEDIA_SALARIO
  FROM PROFESSOR
 GROUP BY VL_SALARIO;