--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------------- COMANDOS DDL: CREATE TABLE ---------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CRIACÃO BÁSICA DE UMA TABELA;
CREATE TABLE AULA_CT00(ID_AULA NUMBER,
                       DS_AULA VARCHAR2(50),
                       DT_CADASTRO DATE);
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------                       
------------------------- DEFININDO VALORES DEFAULT ----------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------                       

-- DEFININDO SEQUENCE COMO VALOR DEFAULT: 
-- CRIAÇÃO DE SEQUENCE PARA DEFINÍ-LA COMO DEFAULT NA COLUNA DE CHAVE PRIMÁRIA:
CREATE SEQUENCE AULA_CT01_SEQ START WITH 1 INCREMENT BY 1;

-- CRIÁCÃO DA TABELA AULA_CT01:
CREATE TABLE AULA_CT01(ID_AULA NUMBER DEFAULT AULA_CT01_SEQ.NEXTVAL,
                       DS_AULA VARCHAR2(50),
                       DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL,
                       ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL);

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------                       
------------------------- DEFININDO CHAVE PRIMÁRIA -----------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------   
-- DEFINIÇÃO DE CHAVE PRIMÁRIA AO LADO DA COLUNA SEM ESPECIFICAR SEU NOME:
CREATE TABLE AULA_CT02(ID_AULA NUMBER DEFAULT AULA_CT01_SEQ.NEXTVAL PRIMARY KEY,
                       DS_AULA VARCHAR2(50),
                       DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL,
                       ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL);

-- QUANDO NÃO ESPECIFICAMOS O NOME DE UMA CONSTRAINT, O ORACLE ATRIBUI UM NOME.
-- EXECUTE A QUERY ABAIXO APÓS A CRIAÇÃO DA TABELA ACIMA, E VEJA O NOME DA 
-- CONSTRAINT QUE FOI GERADO:
SELECT CONSTRAINT_NAME 
  FROM USER_CONSTRAINTS 
 WHERE TABLE_NAME = 'AULA_CT02';

-- DEFINIÇÃO DE CHAVE PRIMÁRIA AO LADO DA COLUNA ESPECIFICANDO O SEU NOME:
CREATE TABLE AULA_CT03(ID_AULA NUMBER DEFAULT AULA_CT01_SEQ.NEXTVAL 
                       CONSTRAINT AULA_CT03_PK PRIMARY KEY,
                       DS_AULA VARCHAR2(50) NOT NULL,
                       DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL ,
                       ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL);

-- DEFINIÇÃO DE CHAVE PRIMÁRIA APÓS A DEFINIÇÃO DAS COLUNAS DA TABELA:
CREATE TABLE AULA_CT04(ID_AULA NUMBER DEFAULT AULA_CT01_SEQ.NEXTVAL,
                       DS_AULA VARCHAR2(50),
                       DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL ,
                       ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL,
CONSTRAINT AULA_CT04_PK PRIMARY KEY (ID_AULA));


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------                       
------------------------- DEFININDO CHAVE ESTRANGEIRA --------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------   
CREATE TABLE AULA_CT05(ID_AULA NUMBER DEFAULT AULA_CT01_SEQ.NEXTVAL NOT NULL,
                       DS_AULA VARCHAR2(50),
                       DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL,
                       ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL,
                       ID_PESSOA NUMBER,
CONSTRAINT AULA_CT05_PK PRIMARY KEY (ID_AULA),
CONSTRAINT AULA_CT05_FK01 FOREIGN KEY (ID_PESSOA) REFERENCES PESSOA(ID_PESSOA));

--------------------------------------------------------------------------------
-------------------------------------------------------------------------------- 
-- PARA REMOVER AS TABELAS CRIADA NESTA AULA EXECUTE OS COMANDOS:
DROP TABLE AULA_CT00;
DROP TABLE AULA_CT01;
DROP TABLE AULA_CT02;
DROP TABLE AULA_CT03;
DROP TABLE AULA_CT04;
DROP TABLE AULA_CT05;


