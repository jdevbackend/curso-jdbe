--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- OPERADORES DE ------------------------------------
--------------------------- CONJUNTO - MINUS -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
 WHERE A.ID_ALUNO IN(2,6,7,9,10)
MINUS
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
WHERE A.ID_ALUNO IN(2,6,8);
