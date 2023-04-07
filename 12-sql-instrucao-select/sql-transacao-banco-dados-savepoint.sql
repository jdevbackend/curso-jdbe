--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------- TRANSAÇÕES DE BANCO DE DADOS ------------------------------
---------------------------- SAVEPOINT -----------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- SAVEPOINT: CRIA PONTOS DE SALVAMENTO EM UMA TRANSAÇÃO.

-- CRIE A TABELA PARA REALIZAR O EXERCÍCIO DA AULA:
CREATE TABLE AULA_TRANSACAO(ID_TRANSACAO NUMBER,
                            DS_TRANSACAO VARCHAR2(50));

/**                             
INSERT INTO AULA_TRANSACAO VALUES(1, 'TRANSACAO_SAVEPOINT');
INSERT INTO AULA_TRANSACAO VALUES(2, 'TRANSACAO_SAVEPOINT_01');
INSERT INTO AULA_TRANSACAO VALUES(3, 'TRANSACAO_SAVEPOINT_02');
INSERT INTO AULA_TRANSACAO VALUES(4, 'TRANSACAO_SAVEPOINT_03');
**/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
INSERT INTO AULA_TRANSACAO VALUES(1, 'TRANSACAO_SAVEPOINT');
SAVEPOINT TRANSACAO_SAVEPOINT;


INSERT INTO AULA_TRANSACAO VALUES(2, 'TRANSACAO_SAVEPOINT_01');
SAVEPOINT TRANSACAO_SAVEPOINT_01;


INSERT INTO AULA_TRANSACAO VALUES(3, 'TRANSACAO_SAVEPOINT_02');
SAVEPOINT TRANSACAO_SAVEPOINT_02;


INSERT INTO AULA_TRANSACAO VALUES(4, 'TRANSACAO_SAVEPOINT_03');
SAVEPOINT TRANSACAO_SAVEPOINT_03;

-- INSERTS SEM PONTO DE SALVAMENTO;
INSERT INTO AULA_TRANSACAO VALUES(5, 'TRANSACAO_SEM_SAVEPOINT');
INSERT INTO AULA_TRANSACAO VALUES(6, 'TRANSACAO_SEM_SAVEPOINT5');


-- ROLLBACK ATÉ OS PONTOS DE SALVAMENTO.
-- OBS: APÓS EXECUTAR CADA ROLLBACK, VERIFIQUE OS DADOS DA TABELA AULA_TRANSACAO
-- E VEJA O EFEITO GERADO.
ROLLBACK TO TRANSACAO_SAVEPOINT_03; -- FAZ O ROLLBACK DOS INSERTS DOS REGISTROS 
                                    -- COM ID'S: 5 E 6
ROLLBACK TO TRANSACAO_SAVEPOINT_02; -- FAZ O ROLLBACK DO INSERT DO REGISTRO 
                                    -- COM ID: 4
ROLLBACK TO TRANSACAO_SAVEPOINT_01; -- FAZ O ROLLBACK DO INSERT DO REGISTRO 
                                    -- COM ID: 3
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- PARA REMOVER ESTA TABELA:
DROP TABLE AULA_TRANSACAO;

