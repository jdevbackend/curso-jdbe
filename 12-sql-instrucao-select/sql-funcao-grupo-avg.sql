--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- AVG ----------------------------------------
--------------------------- FUNÇÕES DE GRUPO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- AVG: CALCULA O VALOR MÉDIO DE "N" 
SELECT ID_PROFESSOR, AVG(VL_SALARIO) -- AVG(SALARIO) MÉDIA DE SALARIO
  FROM PROFESSOR
 WHERE VL_SALARIO < 2000             -- DE TODOS PROFESSORES QUE TEM SALARIO 
                                     -- MENOR QUE 2000
 GROUP BY ID_PROFESSOR;


-- AVG IGNORA VALORES NULOS, PORTANTO, ELES NÃO ENTRAM NO CÁLCULO DA MÉDIA:
SELECT AVG(VL_SALARIO)
  FROM PESSOA P,
       PROFESSOR PF    -- UNIAO DAS TABELAS PESSOA E PROFESSOR PARA EXEMPLIFICAR
                       -- VL_SALARIO NULO
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR (+);


-- UTILIZANDO NVL PARA SUBSTITUIR O VALOR NULO POR 0. NESTE CASO O AVG IRÁ 
-- CONSIDERAR O REGISTRO COM VL_SALARIO ALTERANDO O RESULTADO DO CALCULO:
SELECT AVG(NVL(VL_SALARIO, 0))  -- NVL PARA SUBSTITUIR NULO POR ZERO. FAÇA O 
                                -- TESTE SUBSTITUINDO ZERO POR OUTROS VALORES
  FROM PESSOA P,
       PROFESSOR PF
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR (+);
 
 