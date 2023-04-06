--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
-------------------------- MANIPULANDO DADOS -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DML: DATA MANIPULATION LANGUAGE / LINGUAGEM DE MANIPULAÇÃO DE DADOS
-- CRUD: CREATE, READ, UPDATE E DELETE
-- AS INSTRUÇÕES SQL ESTUDADAS ATÉ AGORA SE ENQUADRAM NO READ DO ACRÔNIMO CRUD.

-- SINTAXE INSTRUÇÃO INSERT (CREATE):
INSERT INTO NOME_TABELA VALUES(0, 'VALOR1', 'VALOR2');
INSERT INTO NOME_TABELA (COLUNA1, COLUNA2, COLUNA3) 
VALUES (1, 'VALOR2', 'VALOR3');

-- SINTAXE INSTRUÇÃO UPDATE (UPDATE):
UPDATE NOME_TABELA
   SET COLUNA1 = 1,
       COLUNA2 = 'VALOR1',
       COLUNA3 = 'VALOR2',
       COLUNA4 = TO_DATE('10/10/2023','DD/MM/RRRR')
 WHERE CONDICAO = 'VALOR'; -- PODEMOS TER UMA SUBCONSULTA
 
-- SINTAXE INSTRUÇÃO DELETE (DELETE)
DELETE NOME_TABELA
 WHERE CONDICAO = 'VALOR'
   AND CONDICAO1 = 0; -- PODEMOS TER UMA SUBCONSULTA
