--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN ------------------------------------------
---------------------------- NON-EQUIJOINS -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ABAIXO TEMOS UMA CONSULTA COM UM NON-EQUIJOIN ONDE ESTAMOS RETORNANDO TODOS 
-- OS ALUNOS QUE CORRESPONDEM A FAIXA DE ALUNOS MENOS E MAIOR
-- EXEMPLO COM BETWEEN/AND:
SELECT A.ID_ALUNO, 
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E
    ON A.ID_ESCOLARIDADE BETWEEN E.ID_ESCOLARIDADE AND E.ID_ESCOLARIDADE
 WHERE E.ID_ESCOLARIDADE IN(1,2,3,4,5);

-- EXEMPLO COM >=/<=:
SELECT A.ID_ALUNO, 
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E
    ON A.ID_ESCOLARIDADE >= E.ID_ESCOLARIDADE 
   AND A.ID_ESCOLARIDADE <= E.ID_ESCOLARIDADE
 WHERE E.ID_ESCOLARIDADE IN(1,2,3,4,5);;