--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------- TRANSAÇÕES DE BANCO DE DADOS ------------------------------
------------------------------ ROLLBACK ----------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ROLLBACK: FINALIZA A TRANSAÇÃO E DESCARTA AS ALTERAÇÕES REALIZADAS.

-- CRIE ESTA TABELA PARA ACOMPANHAR O EXERCÍCIO DA AULA:
CREATE TABLE AULA_TRANSACAO(ID_TRANSACAO NUMBER,
                            DS_TRANSACAO VARCHAR2(50));
                            
INSERT INTO AULA_TRANSACAO VALUES(1, 'TRANSACAO_VALIDA_COMMIT');
INSERT INTO AULA_TRANSACAO VALUES(2, 'TRANSACAO_COMMIT_IMPLICITO');
INSERT INTO AULA_TRANSACAO VALUES(3, 'TRANSACAO_COMMIT_IMPLICITO1');
INSERT INTO AULA_TRANSACAO VALUES(4, 'TRANSACAO_COMMIT_IMPLICITO2');

-- EXECUTE O ROLLBACK PARA REVERTER AS ALTERAÇÕES:
ROLLBACK;

-- PARA REMOVER ESTA TABELA:
DROP TABLE AULA_TRANSACAO;
