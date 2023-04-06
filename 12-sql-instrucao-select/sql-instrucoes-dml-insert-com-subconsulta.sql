--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
----------------------- INSERT COM SUBCONSULTA ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CRIAÇÃO DA TABELA CONSIDERANDO AS COLUNAS DA CONSULTA:
CREATE TABLE RELATORIO_PESSOA (ID_PESSOA NUMBER,
                               NM_PRIMEIRO_NOME VARCHAR2(100 BYTE),
                               NM_SOBRENOME VARCHAR2(100 BYTE),
                               DT_NASCIMENTO DATE,
                               TIPO_PESSOA VARCHAR2(50),
                               ID_ESCOLARIDADE NUMBER);

-- INSERT COM SUB-CONSULTA:
INSERT INTO RELATORIO_PESSOA (ID_PESSOA, NM_PRIMEIRO_NOME ,NM_SOBRENOME,
                              DT_NASCIMENTO, TIPO_PESSOA, ID_ESCOLARIDADE)
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
UNION
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'PROFESSOR' AS TIPO_PESSOA, NULL AS "ID_ESCOLARIDADE"
  FROM PESSOA P JOIN
       PROFESSOR PP 
   ON (P.ID_PESSOA = PP.ID_PROFESSOR)
UNION
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ADMINISTRADOR' AS TIPO_PESSOA, NULL AS "ID_ESCOLARIDADE"
  FROM PESSOA P JOIN
       ADMINISTRADOR A 
   ON (P.ID_PESSOA = A.ID_ADMINISTRADOR)
ORDER BY TIPO_PESSOA;

DROP TABLE RELATORIO_PESSOA;