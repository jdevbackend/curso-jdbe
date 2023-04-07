--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------- TRANSAÇÕES DE BANCO DE DADOS ------------------------------
------------------------------ COMMIT ------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- COMMIT: FINALIZA A TRANSAÇÃO E TORNA PERMANENTE AS ALTERAÇÕES REALIZADAS.

-- CRIE A TABELA PARA REALIZAR O EXERCÍCIO DA AULA:
CREATE TABLE AULA_TRANSACAO(ID_TRANSACAO NUMBER,
                            DS_TRANSACAO VARCHAR2(50));
                            
INSERT INTO AULA_TRANSACAO VALUES(1, 'TRANSACAO_VALIDA_COMMIT');
INSERT INTO AULA_TRANSACAO VALUES(2, 'TRANSACAO_COMMIT_IMPLICITO');
INSERT INTO AULA_TRANSACAO VALUES(3, 'TRANSACAO_COMMIT_IMPLICITO1');
INSERT INTO AULA_TRANSACAO VALUES(4, 'TRANSACAO_COMMIT_IMPLICITO1');

-- PARA REMOVER ESTA TABELA:
DROP TABLE AULA_TRANSACAO;


