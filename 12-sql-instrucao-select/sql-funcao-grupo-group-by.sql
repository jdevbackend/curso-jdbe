--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------- GROUP BY -----------------------------------
------------------------------- FUNÇÕES DE GRUPO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CLASSIFICANDO / AGRUPANDO ALUNOS POR ESCOLARIDADE
SELECT E.ID_ESCOLARIDADE, 
       E.DS_ESCOLARIDADE,
       COUNT(E.ID_ESCOLARIDADE) AS "QTD_ALUNOS"
  FROM PESSOA P,
       ALUNO A,
       ESCOLARIDADE E
 WHERE P.ID_PESSOA = A.ID_ALUNO
   AND A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE
 GROUP BY E.ID_ESCOLARIDADE, E.DS_ESCOLARIDADE;