--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------- NATURAL JOIN ---------------------------------
------------------------------- FUNÇÕES DE GRUPO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UNIFICANDO TABELAS ATRAVÉS DA CLÁUSULA WHERE. NESTE CENÁRIO, FAZEMOS A JUNÇÃO
-- DAS TABELAS ATRAVÉS DAS CHAVES PRIMÁRIAS X CHAVES ESTRANGEIRA. ESSE TIPO DE
-- JOIN É CHAMADO DE EQUIJOIN.
SELECT *
  FROM ALUNO A,
       ESCOLARIDADE E
 WHERE A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE;

-- NATURAL JOIN: ESTE TIPO DE JOIN UNIFICA AS TABELAS ATRAVÉS DE TODAS AS 
-- COLUNAS QUE POSSUEM O MESMO NOME E TIPO DE DADOS
SELECT *
  FROM ALUNO NATURAL JOIN 
       ESCOLARIDADE;
       
-- NO EXEMPLO ACIMA, A TABELA ALUNO E A TABELA ESCOLARIDADE POSSUEM SOMENTE A 
-- COLUNA ID_ESCOLARIDADE QUE POSSUEM O MESMO NOME E TIPO. PORTANTO, O NATURAL 
-- JOIN SERÁ FEITO ATRAVÉS DESTA COLUNA.