--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- OPERADORES DE ------------------------------------
------------------------------- CONJUNTO ---------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UNION: RETORNA TODAS AS LINHAS SELECIONADAS PELAS CONSULTAS/QUERY DESCARTANDO
-- LINHAS DUPLICADAS.
-- SINTAXE:
SELECT COLUNA1, COLUNA2
  FROM TABELA1
UNION
SELECT COLUNA1, COLUNA2
  FROM TABELA2;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UNION ALL: RETORNA TODAS AS LINHAS SELECIONADAS, INCLUSIVE AS DUPLICADAS.
-- SINTAXE:
SELECT COLUNA1, COLUNA2
  FROM TABELA1
UNION ALL
SELECT COLUNA1, COLUNA2
  FROM TABELA2;
  
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- INTERSECT: RETORNA SOMENTE AS LINHAS EM COMUM ENTRE AS CONSULTAS.
-- SINTAXE:
SELECT COLUNA1, COLUNA2
  FROM TABELA1
INTERSECT
SELECT COLUNA1, COLUNA2
  FROM TABELA2;
  
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------  
-- MINUS: ELE SUBTRAI OS VALORES DE UMA CONSULTA EM RELAÇÃO A OUTRA, OU SEJA,
-- RETORNA AS LINHAS QUE ESTÃO PRESENTES NA PRIMEIRA CONSULTA E NÃO ESTÃO NA 
-- SEGUNDA CONSULTA.
-- SINTAXE:
SELECT COLUNA1, COLUNA2
  FROM TABELA1
MINUS
SELECT COLUNA1, COLUNA2
  FROM TABELA2;