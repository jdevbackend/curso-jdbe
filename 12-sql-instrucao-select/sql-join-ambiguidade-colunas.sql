--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------------- TRATANDO AMBIGUIDADE ---------------------------------
------------------------------ DE COLUNAS --------------------------------------
------------------------------ COM ALIAS ---------------------------------------
--------------------------------------------------------------------------------
-- TRATANDO AMBIGUIDADE DE COLUNAS COM O NOME DA TABELA:
SELECT ALUNO.ID_ESCOLARIDADE AS "ESCOLARIDADE_ALUNO_ID",
       ESCOLARIDADE.ID_ESCOLARIDADE AS "ESCOLARIDADE_ID"
  FROM ALUNO JOIN
       ESCOLARIDADE
       ON (ALUNO.ID_ESCOLARIDADE = ESCOLARIDADE.ID_ESCOLARIDADE);

-- TRATANDO AMBIGUIDADE COM OS ALIAS DE TABELA:
SELECT A.ID_ESCOLARIDADE AS "ESCOLARIDADE_ALUNO_ID",
       E.ID_ESCOLARIDADE AS "ESCOLARIDADE_ID"
  FROM ALUNO A JOIN
       ESCOLARIDADE E
       ON (A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE);

-- OBS: AO UTILIZAR A CLÁUSULA USING, A COLUNA ESPECIFICADA NÃO PODERÁ TER UM 
-- ALIAS NEM NA SESSÃO SELECT E NEM NA WHERE:
SELECT ID_ESCOLARIDADE AS "ESCOLARIDADE_ALUNO_ID",
       ID_ESCOLARIDADE AS "ESCOLARIDADE_ID"
  FROM ALUNO A JOIN
       ESCOLARIDADE E USING (ID_ESCOLARIDADE)
 WHERE ID_ESCOLARIDADE = 1;