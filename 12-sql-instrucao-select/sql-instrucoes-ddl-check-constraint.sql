--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- CONSTRAINT CHECK ------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- TABELAS UTILIZADAS NA AULA:
CREATE TABLE TB_PESSOA(ID_PESSOA NUMBER,
                       NM_PESSOA VARCHAR2(50),
                       DT_NASCIMENTO DATE,
                       VL_SALARIO NUMBER(18,2),
CONSTRAINT TB_PESSOA_PK PRIMARY KEY(ID_PESSOA));

CREATE SEQUENCE TB_AULA_SEQ START WITH 1 INCREMENT BY 1;

CREATE TABLE TB_AULA(ID_AULA NUMBER DEFAULT TB_AULA_SEQ.NEXTVAL NOT NULL,
                     DS_AULA VARCHAR2(50),
                     DT_CADASTRO DATE DEFAULT SYSDATE NOT NULL,
                     ST_ATIVO CHAR(1) DEFAULT 'N' NOT NULL,
                     ID_PESSOA NUMBER,
CONSTRAINT TB_AULA_PK PRIMARY KEY (ID_AULA));
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 1) CONSTRAINT PARA NÃO PERMITIR QUE O VALOR DO SALÁRIO NÃO SEJA MENOR QUE 
--    R$ 1.2000,00:
--------------------------------------------------------------------------------
ALTER TABLE TB_PESSOA ADD CONSTRAINT TB_PESSOA_CK00 CHECK (VL_SALARIO > 1200);
--------------------------------------------------------------------------------
-- 2) CONSTRAINT PARA PERMITIR SOMENTE OS VALORES 'S' E 'N' NA COLUNA ST_ATIVO:
ALTER TABLE TB_AULA ADD CONSTRAINT TB_AULA_CK00 CHECK (ST_ATIVO IN('S','N'));
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ATENÇÃO!
-- NÃO É PERMITIDO O USO DE PSEUDOCOLUNAS COMO: NEXTVAL, CURVAL, LEVEL E ROWNUM.
-- CHAMADAS DE FUNÇÕES COMO: UID, USER E SYSDATE
-- EXEMPLOS DE INSTRUÇÕES QUE NÃO SÃO PERMITIDAS:
ALTER TABLE TB_PESSOA ADD CONSTRAINT TB_PESSOA_CK01 CHECK (ID_AULA > ROWNUM);
ALTER TABLE TB_AULA ADD CONSTRAINT TB_AULA_CK01 CHECK (DT_CADASTRO = SYSDATE);
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- PARA REMOÇÃO DAS TABELAS UTILIZADAS NA AULA:
DROP TABLE TB_PESSOA;
DROP TABLE TB_AULA;
DROP SEQUENCE TB_AULA_SEQ;

