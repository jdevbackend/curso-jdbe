--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- OPERADORES DE ------------------------------------
------------------------- CONJUNTO - UNION ALL ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 1) ELE NÃO DESCARTA AS LINHAS DUPLICADAS
-- 2) DISTINCT NÃO PODE SER UTILIZADA

-- CONSULTA QUE RETORNA DADOS DOS ALUNOS
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
UNION ALL
-- CONSULTA QUE RETORNA DADOS DOS PROFESSORES
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'PROFESSOR' AS TIPO_PESSOA, NULL AS "ID_ESCOLARIDADE"
  FROM PESSOA P JOIN
       PROFESSOR PP 
   ON (P.ID_PESSOA = PP.ID_PROFESSOR)
UNION ALL
-- CONSULTA QUE RETORNA DADOS DOS ADMINISTRADORES
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ADMINISTRADOR' AS TIPO_PESSOA, NULL AS "ID_ESCOLARIDADE"
  FROM PESSOA P JOIN
       ADMINISTRADOR A 
   ON (P.ID_PESSOA = A.ID_ADMINISTRADOR)
UNION ALL
-- ESSA CONSULTA FOI REPETIDA NA QUERY PARA SIMULAR AS LINHAS DUPLICADAS
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ADMINISTRADOR' AS TIPO_PESSOA, NULL AS "ID_ESCOLARIDADE"
  FROM PESSOA P JOIN
       ADMINISTRADOR A 
   ON (P.ID_PESSOA = A.ID_ADMINISTRADOR)
ORDER BY TIPO_PESSOA;