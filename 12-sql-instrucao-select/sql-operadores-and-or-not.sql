--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- OPERADORES AND, OR e NOT -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADOR AND: RETORNARÁ OS REGISTROS ONDE AS DUAS CONDIÇÕES SÃO VERDADEIRAS
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE > 2
   AND DS_ESCOLARIDADE LIKE '%Complet%';

-- OPERADOR OR: RETORNARÁ OS REGISTROS ONDE PELO MENOS UMA DAS CONDIÇÕES É
-- VERDADEIRA
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE > 2
    OR DS_ESCOLARIDADE LIKE '%Complet%';
    
-- OPERADOR NOT: RETORNARÁ OS REGISTROS QUE NÃO ESTÃO NA LISTA. LOGO ONDE FOR
-- FALSO, RETORNARÁ TRUE
SELECT *
  FROM ESCOLARIDADE 
 WHERE ID_ESCOLARIDADE NOT IN (2,4);