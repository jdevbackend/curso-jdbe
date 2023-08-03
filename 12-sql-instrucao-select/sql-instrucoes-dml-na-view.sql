--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------- DML COM VIEWS --------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- EXECUTANDO INSTRUÇÕES DML EM VIEWS:
-- 1) QUANDO A VIEW REFERENCIA TODAS AS COLUNAS DA TABELA E NÃO POSSUI NA QUERY:
--    FUNÇÕES DE GRUPO, DISTINCT, GROUP BY E COLUNAS DEFINIDAS POR EXPRESSÕES É 
--    POSSÍVEL EXECUTAR INSTRUÇÕES DML, EXEMPLO:
--
-- CRIANDO A VIEW:
CREATE OR REPLACE VIEW VIEW_USUARIO AS
SELECT * FROM USUARIO;

-- INSERINDO DADOS:
INSERT INTO VIEW_USUARIO VALUES(15,'adm99','Senha@2023','N',SYSDATE);
SELECT * FROM VIEW_USUARIO;

-- ATUALIZANDO DADOS:
UPDATE VIEW_USUARIO 
   SET DS_SENHA = 'Senha*2023', 
       ST_ATIVO = 'S' 
 WHERE ID_USUARIO = 15;
 
-- DELETANDO DADOS:
DELETE VIEW_USUARIO WHERE ID_USUARIO = 15;
--------------------------------------------------------------------------------
-- QUANDO NÃO É POSSÍVEL EFETUAR OPERAÇÕES DML NUMA VIEW?
-- 2) QUANDO A VIEW POSSUIR UMA PSEUDO-COLUNA COM ROWNUM;
CREATE OR REPLACE VIEW VIEW_ROWNUM_USUARIO AS
SELECT ROWNUM ID_SEQUENCIAL, U.*
  FROM USUARIO U;

INSERT INTO VIEW_ROWNUM_USUARIO (ST_ATIVO,ID_USUARIO,NM_USUARIO,
                                 DS_SENHA,DT_CADASTRO) 
                          VALUES('N',15,'adm99', 'Senha@2023',sysdate);
--------------------------------------------------------------------------------
-- 2) QUANDA VIEW POSSUIR FUNÇÕES DE GRUPO COMO: SUM, MAX E GROUP BY;
CREATE OR REPLACE VIEW VIEW_FUNCAO_GRUPO_USUARIO AS
SELECT COUNT(*) QTD_ATIVOS, U.*
  FROM USUARIO U
 GROUP BY ID_USUARIO,NM_USUARIO,DS_SENHA,ST_ATIVO,DT_CADASTRO;


INSERT INTO VIEW_FUNCAO_GRUPO_USUARIO (ST_ATIVO,ID_USUARIO,NM_USUARIO,
                                       DS_SENHA,DT_CADASTRO) 
                                VALUES('N',15,'adm99', 'Senha@2023',sysdate);


CREATE OR REPLACE VIEW VIEW_FUNCAO_GRUPO_USUARIO1 AS
SELECT COUNT(*) QTD_ATIVOS, U.ST_ATIVO
  FROM USUARIO U
 GROUP BY U.ST_ATIVO;
 
INSERT INTO VIEW_FUNCAO_GRUPO_USUARIO1 (ST_ATIVO) VALUES('N');
--------------------------------------------------------------------------------
-- 2) QUANDO A VIEW POSSUIR DISTINCT;

CREATE OR REPLACE VIEW VIEW_DISTINCT_USUARIO AS
SELECT DISTINCT A.*, E.DS_ESCOLARIDADE
  FROM ALUNO A,
       ESCOLARIDADE E;
       
INSERT INTO VIEW_DISTINCT_USUARIO VALUES (99, 1,'Graduação Completa');
--------------------------------------------------------------------------------
-- 2) COLUNAS DA TABELA QUE POSSUEM A RESTRIÇÃO NOT NULL E QUE NÃO ESTÃO 
--    REFERENCIADAS NA VIEW;
CREATE OR REPLACE VIEW VIEW_NOT_NULL_USUARIO AS
SELECT ID_USUARIO, NM_USUARIO,ST_ATIVO,DT_CADASTRO 
  FROM USUARIO;
  
INSERT INTO VIEW_NOT_NULL_USUARIO VALUES(20, 'ADM77','N', SYSDATE);