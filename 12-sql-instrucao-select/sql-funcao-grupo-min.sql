--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- MIN ----------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT MIN(VL_SALARIO) AS SAL_MIN -- OBTEM O VALOR MÍNIMO DO RESULTADO DA 
                                  -- CONSULTA
  FROM PROFESSOR;

SELECT MIN(DS_SOBRE_INSTRUTOR) AS DES_MIN -- TAMBÉM PODE SER UTILIZADO PARA 
                                           -- COLUNAS DO TIPO TEXTO
  FROM PROFESSOR;
  
SELECT MIN(DS_SOBRE_INSTRUTOR) AS DES_MIN, -- OBTENDO A MENOR DESCRIÇÃO DO 
                                           -- INSTRUTOR E O MENOR SALÁRIO
       MIN(VL_SALARIO) AS SAL_MIN  
  FROM PROFESSOR;