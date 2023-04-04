--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- MAX ----------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT MAX(VL_SALARIO) AS SAL_MAX -- OBTEM O VALOR MÍNIMO DO RESULTADO DA 
                                  -- 
  FROM PROFESSOR;


SELECT MAX(DS_SOBRE_INSTRUTOR) AS DES_MAX -- TAMBÉM PODE SER UTILIZADO PARA 
                                          -- COLUNAS DO TIPO TEXTO
   FROM PROFESSOR;

   
SELECT MAX(VL_SALARIO)         AS SAL_MAX, -- OBTENDO A MENOR DESCRIÇÃO DO 
                                           -- INSTRUTOR E O MENOR SALÁRIO
       MAX(DS_SOBRE_INSTRUTOR) AS DES_MAX
   FROM PROFESSOR;