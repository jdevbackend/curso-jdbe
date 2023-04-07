--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- INTRODUÇÃO -----------------------------------------
-------------------- TRANSAÇÕES DE BANCO DE DADOS ------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UMA TRANSAÇÃO DE BANCO É INICIADA QUANDO INSTRUÇÕES QUE FAZEM PARTE DOS 
-- GRUPOS: DML, DCL E DDL SÃO EXECUTADOS.

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- INSTRUÇÕES DML: INSERT, UPDATE E DELETE
-- APÓS A EXECUÇÃO DAS INSTRUÇÕES ACIMA, A TRANSAÇÃO É FINALIZADA QUANDO:
        -- AS INSTRUÇÕES COMMIT OU ROLLBACK SÃO EXECUTADAS DE FORMA EXPLÍCITA;
        -- O USUÁRIO SAI DA IDE DE ACESSO AO BANCO
        -- OU QUANDO OCORRE ALGUMA FALHA NO SISTEMA


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- INSTRUÇÕES DCL: GRANT E O REVOKE
-- INSTRUÇÕES DDL: CREATE, ALTER E DROP
-- APÓS A EXECUÇÃO DAS INSTRUÇÕES ACIMA, UM COMMIT IMPLÍCITO É EXECUTADO.