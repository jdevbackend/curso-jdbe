--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- DDL - TRUNCATE -------------------------------------
-------------------- REMOÇÃO DE TODOS OS REGISTROS -----------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--- DDL (DATA DEFINITION LANGUAGEM/ LINGUAGEM DE DEFINIÇÃO DE DADOS);
--- O TRUNCATE NÃO GERA INFORMAÇÕES DE ROLLBACK;
--- COM O TRUNCATE AS TRIGGERS DE DELETE NÃO SÃO DISPARADAS;
--- CASO A TABELA CONTENHA INTEGRIDADE REFERENCIAL COM OUTRAS TABELAS, AS 
--- CONSTRAINTS PRECISARAM SER DESABILITADAS;
--- CRIACAO DE TABELA BACKUP DA TABELA ALUNO PARA EXERCITAR:
CREATE TABLE ALUNO_BACKUP AS
SELECT * FROM ALUNO;

-- COMANDO PARA APAGAR A TABELA DE FORMA OTIMIZADA
TRUNCATE TABLE ALUNO_BACKUP;


--- CASO QUEIRA APAGAR ESTA TABELA, EXECUTE O COMANDO ABAIXO:
DROP TABLE ALUNO_BACKUP;