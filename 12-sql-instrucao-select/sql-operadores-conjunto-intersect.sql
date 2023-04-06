--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- OPERADORES DE ------------------------------------
------------------------- CONJUNTO - INTERSECT ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 1) ELE RETORNA AS LINHAS QUE SÃO COMUNS ENTRE AS CONSULTAS
-- 2) DEVE- SE RESPEITA A QUANTIDADE DE COLUNAS E SEUS TIPOS
-- 3) NÃO IGNORA VALORES NULOS

SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
 WHERE A.ID_ALUNO IN(2,6,7,10)
INTERSECT
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, P.NM_SOBRENOME, P.DT_NASCIMENTO, 
       'ALUNO' AS TIPO_PESSOA, A.ID_ESCOLARIDADE
  FROM PESSOA P JOIN
       ALUNO A 
   ON (P.ID_PESSOA = A.ID_ALUNO)
WHERE A.ID_ALUNO IN(2,6,8,9);