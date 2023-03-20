--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------- VISAO GERAL DOS PRINCIPAIS OBJETOS DE ----------------------
-------------------------- BANCO DE DADOS ORACLE -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- PARA EXEMPLIFICAR, VAMOS CRIAR UMA TABELA E INSERIR REGISTROS PARA TESTES: --
--------------------------------------------------------------------------------


/*******************************************************************************
**                               SEQUENCE                                     **
*******************************************************************************/
-- ***** PASSO 01: CRIAÇÃO DA SEQUENCE: ***** --
CREATE SEQUENCE ALUNO_SEQ START WITH 1 INCREMENT BY 1;



/*******************************************************************************
**                                TABLE                                       **
*******************************************************************************/
-- ***** PASSO 02: CRIAÇÃO DA TABELA: ***** --
CREATE TABLE ALUNO(ID_ALUNO      INTEGER DEFAULT ALUNO_SEQ.NEXTVAL,
                   NM_ALUNO      VARCHAR2(30),
                   NM_SOBRENOME  VARCHAR2(50),
                   DT_NASCIMENTO DATE,
                   NR_CPF        INTEGER);


-- ***** PASSO 03: ADIÇÃO DA CONSTRAINT CHAVE PRIMÁRIA ***** --
ALTER TABLE ALUNO ADD CONSTRAINT ALUNO_PK PRIMARY KEY (ID_ALUNO);


-- ***** PASSO 04: INSERÇÃO DOS REGISTROS (MASSA DE DADOS) ***** --
INSERT INTO ALUNO (NM_ALUNO, NM_SOBRENOME, DT_NASCIMENTO, NR_CPF) VALUES(
'PRISCILA', 'RESENDE', TO_DATE('05/10/1987', 'DD/MM/RRRR'), 34348499883);
INSERT INTO ALUNO (NM_ALUNO, NM_SOBRENOME, DT_NASCIMENTO, NR_CPF) VALUES(
'JOSÉ', 'BATISTA', TO_DATE('20/05/1988', 'DD/MM/RRRR'), 48493833883);
INSERT INTO ALUNO (NM_ALUNO, NM_SOBRENOME, DT_NASCIMENTO, NR_CPF) VALUES(
'ANDERSON', 'SOUZA', TO_DATE('06/11/1997', 'DD/MM/RRRR'), 58349388339);
COMMIT;


-- ***** PASSO 05: CRIAÇÃO DA VIEW ***** --
CREATE OR REPLACE VIEW ALUNO_VIEW AS
SELECT *
  FROM ALUNO;
  
  
-- ***** PASSO 06:  REALIZANDO A QUERY NA VIEW ALUNO_VIEW ***** --
SELECT * FROM ALUNO_VIEW;


/*******************************************************************************
**                                PROCEDURE                                   **
*******************************************************************************/
CREATE OR REPLACE PROCEDURE PRC_CADASTRA_ALUNO(P_NOME IN ALUNO.NM_ALUNO%TYPE,
                                               P_SOBRENOME IN ALUNO.NM_SOBRENOME%TYPE,
                                               P_NASCIMENTO IN ALUNO.DT_NASCIMENTO%TYPE,
                                               P_CPF IN ALUNO.NR_CPF%TYPE) 
IS
-- SESSÃO DE DECLARAÇÃO DE VARIÁVEIS
BEGIN
   -- CORPO DO PROGRAMA
   INSERT INTO ALUNO (NM_ALUNO, NM_SOBRENOME, DT_NASCIMENTO, NR_CPF) 
               VALUES(P_NOME, P_SOBRENOME, P_NASCIMENTO, P_CPF);
   COMMIT;
END;


/*******************************************************************************
**                           PACKAGE SPECIFICATION                            **
*******************************************************************************/
CREATE OR REPLACE PACKAGE PKG_ALUNO 
AS
    PROCEDURE PRC_CADASTRA_ALUNO(P_NOME IN ALUNO.NM_ALUNO%TYPE,
                                 P_SOBRENOME IN ALUNO.NM_SOBRENOME%TYPE,
                                 P_NASCIMENTO IN ALUNO.DT_NASCIMENTO%TYPE,
                                 P_CPF IN ALUNO.NR_CPF%TYPE);
END;


/*******************************************************************************
**                              PACKAGE BODY                                  **
*******************************************************************************/
CREATE OR REPLACE PACKAGE BODY PKG_ALUNO 
IS
    PROCEDURE PRC_CADASTRA_ALUNO(P_NOME IN ALUNO.NM_ALUNO%TYPE,
                                 P_SOBRENOME IN ALUNO.NM_SOBRENOME%TYPE,
                                 P_NASCIMENTO IN ALUNO.DT_NASCIMENTO%TYPE,
                                 P_CPF IN ALUNO.NR_CPF%TYPE) 
    IS
    -- SESSÃO DE DECLARAÇÃO DE VARIÁVEIS
    BEGIN
       -- CORPO DO PROGRAMA
       INSERT INTO ALUNO (NM_ALUNO, NM_SOBRENOME, DT_NASCIMENTO, NR_CPF) 
                   VALUES(P_NOME, P_SOBRENOME, P_NASCIMENTO, P_CPF);
       COMMIT;
    END;
END;


/*******************************************************************************
**                                TRIGGER                                     **
*******************************************************************************/
CREATE OR REPLACE TRIGGER ALUNO_TRIGGER 
BEFORE INSERT ON ALUNO FOR EACH ROW
BEGIN
    :NEW.NM_ALUNO := :NEW.NM_ALUNO || 'ALT NOME';
END;



/*******************************************************************************
**                                  TYPE                                      **
*******************************************************************************/
CREATE OR REPLACE TYPE ALUNO_REGISTRO AS OBJECT(ID_ALUNO INTEGER,
                                                NM_ALUNO VARCHAR2(30),
                                                NM_SOBRENOME VARCHAR2(50),
                                                DT_NASCIMENTO DATE,
                                                NR_CPF INTEGER);


/*******************************************************************************
**              PARA REMOVER TODOS OS OBJETOS CRIADOS:                        **
*******************************************************************************/
DROP TABLE ALUNO;
DROP VIEW ALUNO_VIEW;
DROP PACKAGE PKG_ALUNO;
DROP PROCEDURE PRC_CADASTRA_ALUNO;
DROP TYPE ALUNO_REGISTRO;
DROP SEQUENCE ALUNO_SEQ;
                   
