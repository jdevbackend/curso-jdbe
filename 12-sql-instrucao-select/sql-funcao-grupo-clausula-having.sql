--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------------------------- HAVING -----------------------------------
------------------------------- FUNÇÕES DE GRUPO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- LISTANDO ALUNOS
SELECT P.NM_PRIMEIRO_NOME, E.ID_ESCOLARIDADE, 
       E.DS_ESCOLARIDADE
  FROM PESSOA P,
       ALUNO A,
       ESCOLARIDADE E
 WHERE P.ID_PESSOA = A.ID_ALUNO
   AND A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE
   AND E.ID_ESCOLARIDADE = 5;

-- AGRUPANDO E FILTRANDO A QUANTIDADE DE ALUNOS POR ESCOLARIDADE 
SELECT E.ID_ESCOLARIDADE, 
       E.DS_ESCOLARIDADE,
       COUNT(E.ID_ESCOLARIDADE) AS "QTD_ALUNOS"
  FROM PESSOA P,
       ALUNO A,
       ESCOLARIDADE E
 WHERE P.ID_PESSOA = A.ID_ALUNO
   AND A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE
   AND E.ID_ESCOLARIDADE <> 1 
 GROUP BY E.ID_ESCOLARIDADE, E.DS_ESCOLARIDADE
 HAVING COUNT(E.ID_ESCOLARIDADE) > 1; -- FILTRANDO OS GRUPOS QUE POSSUEM 
                                      -- QUANTIDADE DE ALUNOS EM UMA DETERMINADA
                                      -- ESCOLARIDADE QUE SEJAM MAIOR QUE 1