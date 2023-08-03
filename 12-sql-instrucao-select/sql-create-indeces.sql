--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------- ÍNDICES --------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CREATE INDEX MODULO_IDX01 ON MODULO (ID_MODULO, ID_CURSO);

-- QUANDO EU DEVO CRIAR UM ÍNDICE?
-- 1) QUANDO A COLUNA TIVER UMA GRANDE FAIXA DE VALORES;
-- 2) QUANDO UMA COLUNA TIVER GRANDE QUANTIDADE DE VALORES NULOS;
-- 3) QUANDO UMA OU MAIS COLUNAS FOREM UTILIZADAS COM FREQUÊNCIA EM JOINS E NA 
--    CLÁUSULA WHERE;

-- QUANDO EU NÃO DEVO CRIAR UM ÍNDICE?
-- 1) QUANDO COLUNAS NÃO SÃO UTILIZADAS COM FREQUENCIA EM CONSULTAS;
-- 2) QUANDO SUA TABELA FOR MUITO PEQUENA;
-- 3) QUANDO UMA TABELA É ATUALIZADA COM FREQUENCIA.

--------------------------------------------------------------------------------
-- 1) REMOVENDO O ÍNDICE:
DROP INDEX MODULO_IDX01;