--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN ------------------------------------------
--------------------------- FULL OUTER JOIN ------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- FULL OUTER JOIN: RETORNA TODOS OS REGISTROS DA TABELA ALUNO MESMO QUE NÃO
-- EXISTA REFERÊNCIAS NA TABELA PROFESSOR, ASSIM COMO, TODOS OS REGISTROS DA 
-- TABELA PROFESSOR FORAM RETORNADOS MESMO NÃO EXISTINDO REFERÊNCIA NA TABELA 
-- ALUNO:
SELECT *
  FROM ALUNO A FULL OUTER JOIN
       PROFESSOR P
    ON(A.ID_ALUNO = P.ID_PROFESSOR);