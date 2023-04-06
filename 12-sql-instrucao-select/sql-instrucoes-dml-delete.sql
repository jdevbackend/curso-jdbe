--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
---------------------------- SINTAXE DELETE ------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADORES QUE PODEM SER USADOS NA CONSIÇÃO WHERE SIMPLES:
-- >, <, >=, <=, =, <> E IN
DELETE NOME_DA_TABELA
 WHERE CONDICAO = (VALOR);

DELETE NOME_DA_TABELA
 WHERE CONDICAO IN (VALORES);
 
-- OPERADORES QUE PODEM SER USADOS NA CONSIÇÃO WHERE QUANDO A SUB-CONSULTA FOR
-- DE ÚNICA LINHA:
--      >, <, >=, <=, = E <>; 
--
-- OPERADORES QUE PODEM SER USADOS NA CONSIÇÃO WHERE QUANDO A SUB-CONSULTA FOR
-- DE MÚLTIPLAS LINHAS:
--      IN, ANY e ALL

-- DELETE COM SUB-CONSULTA DE ÚNICA LINHA:
DELETE NOME_DA_TABELA
 WHERE CONDICAO => (SUB-CONSULTA);

-- DELETE COM SUB-CONSULTA DE MÚLTIPLAS LINHAS:
DELETE NOME_DA_TABELA
 WHERE CONDICAO < IN (SUB-CONSULTA);
 
DELETE NOME_DA_TABELA
 WHERE CONDICAO < ANY (SUB-CONSULTA);