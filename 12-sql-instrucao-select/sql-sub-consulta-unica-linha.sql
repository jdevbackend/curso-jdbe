--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- SUB-CONSULTA -------------------------------------
----------------------------- UNICA LINHA --------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADORES DE COMPARAÇÃO DE ÚNICA LINHA:
-- >, <, >=, <=, = E <>
--------------------------------------------------------------------------------
-- SINTAXE DE UMA SUB-CONSULTA NA CLÁUSULA WHERE:
SELECT [COLUNAS]  -- DEFINIÇÃO DAS SOLUNAS 
  FROM [TABELAS/SUB-CONSULTA]            -- TABELA OU SUB-CONSULTA
 WHERE COLUNA = (SELECT COLUNA/EXPRESSAO -- SUB-CONSULTA QUE RETORNA UMA ÚNICA 
                   FROM TABELA           -- LINHA
                  WHERE CONDICAO);

-- EXEMPLO: DESEJAMOS OBTER OS ADMINISTRADORES QUE RECEBEM UM SALÁRIO MENOR 
-- QUE O MENOR SALÁRIO DE UM PROFESSOR:
SELECT *
  FROM ADMINISTRADOR
 WHERE VL_SALARIO < (SELECT MIN(VL_SALARIO) -- FUNÇÃO DE GRUPO NA SUB-CONSULTA
                       FROM PROFESSOR);

-- EXEMPLO: OBTER OS PROFESSORES QUE RECEBEM SALÁRIO IGUAL AO MENOR SALÁRIO DE
-- TODOS PROFESSORES:
SELECT *
  FROM PROFESSOR
 WHERE VL_SALARIO = (SELECT MIN(VL_SALARIO) 
                       FROM PROFESSOR);

--------------------------------------------------------------------------------
-- SINTAXE DE UMA SUB-CONSULTA NA CLÁUSULA HAVING:
SELECT [COLUNAS]
  FROM [TABELAS/SUB-CONSULTA]
HAVING FUNCAO_GRUPO(COLUNA) = (SELECT COLUNA/EXPRESSAO
                                 FROM TABELA
                                WHERE CONDICAO) -- OPCIONAL DESDE QUE A CONSULTA
                                                -- RETORNE UMA ÚNICA LINHA;
                  
-- EXEMPLO: IDENTIFICAR OS ADMINISTRADORES QUE POSSUEM O MENOR SALÁRIO E QUE 
-- ESTE SEJA MENOR DO QUE O MENOR SALÁRIO DE TODOS OS PROFESSORES
SELECT MIN(ID_ADMINISTRADOR), MIN(VL_SALARIO)
  FROM ADMINISTRADOR 
 HAVING MIN(VL_SALARIO) < (SELECT MIN(VL_SALARIO)
                             FROM PROFESSOR);

-- MESMO EXEMPLO DA CONSULTA ACIMA, PORÉM AGRUPANDO POR ID_ADMINISTRADOR:
SELECT ID_ADMINISTRADOR, MIN(VL_SALARIO)
  FROM ADMINISTRADOR 
 GROUP BY ID_ADMINISTRADOR
 HAVING MIN(VL_SALARIO) < (SELECT MIN(VL_SALARIO)
                             FROM PROFESSOR);

--------------------------------------------------------------------------------
-- SINTAXE DE UMA SUB-CONSULTA NA CLÁUSULA FROM:
SELECT [COLUNAS]                         -- DEFINIÇÃO DAS SOLUNAS 
  FROM [SUB-CONSULTA][ALIAS]             -- TABELA OU SUB-CONSULTA
 WHERE COLUNA = (SELECT COLUNA/EXPRESSAO -- SUB-CONSULTA QUE RETORNA UMA ÚNICA 
                   FROM TABELA           -- LINHA
                  WHERE CONDICAO);
 
-- EXEMPLO: OBTER TODOS OS  ALUNOS QUE POSSUEM A ESCOLARIDADE COM ID 5:
SELECT TABELA.ID_ALUNO, TABELA.ID_ESCOLARIDADE
  FROM (SELECT *
          FROM ALUNO
         WHERE ID_ESCOLARIDADE = (SELECT ID_ESCOLARIDADE
                                    FROM ESCOLARIDADE
                                   WHERE ID_ESCOLARIDADE = 5)) TABELA;