--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN ------------------------------------------
-------------------------- RIGHT OUTER JOIN ------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- RIGHT OUTER JOIN: ESSA CONSULTA RETORNA TODAS AS LINHAS DA TABELA PESSOA
-- QUE ESTÁ A DIREITA MESMO QUE NÃO EXISTA REFERÊNCIA NA TABELA ALUNO 
-- (À ESQUERDA):
SELECT *
  FROM ALUNO A RIGHT OUTER JOIN 
       PESSOA P 
    ON (A.ID_ALUNO = P.ID_PESSOA);
    
    
SELECT *
  FROM PESSOA P RIGHT OUTER JOIN 
       ALUNO A
    ON (A.ID_ALUNO = P.ID_PESSOA);