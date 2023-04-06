--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
-------------------------------- UPDATE ----------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- SINTAXE DO UPDATE

-- SINTAXE BASE
UPDATE NOME_DA_TABELA
   SET COLUNA1 = 'VALOR01',
       COLUNA2 = 0,
       COLUNA3 = 99.99,
       COLUNA4 = '12/03/2023',
       COLUNA5 = TO_DATE('12/03/2023 14:24:03', 'DD/MM/RRRR HH24:MI:SS')
 WHERE CONDICAO;
 

-- SINTAXE PARA ATUALIZAR UMA COLUNA COM BASE NO RESULTADO DE UMA SUB-CONSULTA
-- DE ÚNICA LINHA:
UPDATE NOME_DA_TABELA
   SET COLUNA1 = (SELECT COLUNA01
                    FROM NOME_DA_TABELA
                   WHERE CONDICAO) -- DEVE RETORNAR SOMENTE 1 LINHA
 WHERE CONDICAO;
 
-- SINTAXE PARA ATUALIZAR UMA COLUNA FILTRANDO OS REGISTROS COM BASE EM UMA
-- SUB-CONSULTA. NESTE CASO, PODE SER UTILIZADO CONSULTAS DE ÚNICA OU MÚLTIPLAS
-- LINHAS:

-- CLÁUSULA WHERE COM SUB-CONSULTA DE ÚNICA LINHA:
UPDATE NOME_DA_TABELA
   SET COLUNA1 = (SELECT COLUNA01
                    FROM NOME_DA_TABELA
                   WHERE CONDICAO) -- DEVE RETORNAR SOMENTE 1 LINHA
 WHERE CONDICAO = (SELECT COLUNA02       -- NA CLAUSULA WHERE TANTO CONSULTAS DE 
                                         -- UMA ÚNICA OU MÚLTIPLAS LINHAS PODEM
                                         -- SER UTILIZADAS. LEMBRE-SE DE USAR OS
                                         -- OPERADORES DE COMPARAÇÃO 
                                         -- CORRETAMENTE
                     FROM NOME_DA_TABELA
                    WHERE CONDICAO));

-- CLÁUSULA WHERE COM SUB-CONSULTA DE MÚLTIPLAS LINHAS:
UPDATE NOME_DA_TABELA
   SET COLUNA1 = (SELECT COLUNA01
                    FROM NOME_DA_TABELA
                   WHERE CONDICAO) -- DEVE RETORNAR SOMENTE 1 LINHA
 WHERE CONDICAO IN (SELECT COLUNA02       -- NA CLAUSULA WHERE TANTO CONSULTAS DE 
                                         -- UMA ÚNICA OU MÚLTIPLAS LINHAS PODEM
                                         -- SER UTILIZADAS. LEMBRE-SE DE USAR OS
                                         -- OPERADORES DE COMPARAÇÃO 
                                         -- CORRETAMENTE
                     FROM NOME_DA_TABELA
                    WHERE CONDICAO));