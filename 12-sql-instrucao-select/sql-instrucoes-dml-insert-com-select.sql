--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
--------------------------- INSERT COM SELECT ----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CRIAÇÃO DA TABELA PESSOA_BACKUP. NELA IREMOS COPIAR OS DADOS DA TABELA PESSOA
CREATE TABLE PESSOA_BACKUP(ID_PESSOA NUMBER, 
                           ID_USUARIO NUMBER NOT NULL ENABLE, 
                           DT_NASCIMENTO DATE NOT NULL ENABLE, 
                           NM_PRIMEIRO_NOME VARCHAR2(100 BYTE), 
                           NM_SOBRENOME VARCHAR2(100 BYTE), 
                           CD_RG VARCHAR2(10 BYTE), 
                           CD_CPF NUMBER(11,0), 
                           DT_CADASTRO DATE,
CONSTRAINT PESSOA_BK_PK PRIMARY KEY (ID_PESSOA));

-- INSTRUÇÃO INSERT QUE OBTÉM TODOS OS DADOS E COLUNAS DA TABELA PESSOA PARA 
-- INSERIR NA TABELA PESSOA_BACKUP:
INSERT INTO PESSOA_BACKUP
SELECT * FROM PESSOA;

-- PARA REMOVER A TABELA DE BACKUP DA BASE DE DADOS, EXECUTE A INSTRUÇÃO:
DROP TABLE PESSOA_BACKUP;

