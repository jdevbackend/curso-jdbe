--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- COUNT --------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT COUNT(*) AS TOTAL  -- CONTABILIZA TODAS AS  LINHAS DA MINHA TABELA
  FROM PROFESSOR;



SELECT COUNT(VL_SALARIO) AS TOTAL -- CONTABILIZA SOMENTE OS REGISTROS QUE NÃO  
                                  -- POSSUEM NULOS NA COLULNA VL_SALARIO
  FROM PESSOA P,
       PROFESSOR PF
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR (+);


 
SELECT COUNT(*)  AS TOTAL -- CONTABILIZA TODAS AS LINHAS INDEPENDENTE DE EXISTIR
                          -- NULOS
  FROM PESSOA P,
       PROFESSOR PF
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR (+)


 
SELECT COUNT(DISTINCT VL_SALARIO) AS TOTAL -- CONTABILIZA TODOS OS REGISTROS 
                                           -- EXCLUINDO VALORES NULOS E 
                                           -- REPETIDOS
  FROM PESSOA P,
       PROFESSOR PF
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR (+);