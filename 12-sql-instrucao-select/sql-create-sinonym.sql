--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------------------- SINÔNIMOS --------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 1) CRIANDO SINÔNIMO PARA TABELA:
SELECT * FROM ALUNO;

CREATE SYNONYM ALN FOR ALUNO;

-- QUERY NA TABELA:
SELECT * FROM ALUNO;

-- QUERY NA TABELA UTILIZANDO O SINÔNIMO:
SELECT * FROM ALN;

--------------------------------------------------------------------------------
-- 2) CRIANDO SINÔNIMO PARA UMA SEQUENCE:

CREATE SYNONYM SEQ_AULA FOR AULA_SEQ;

-- QUERY NA SEQUENCE ATRAVÉS:
SELECT AULA_SEQ.CURRVAL FROM DUAL;

-- QUERY NA SEQUENCE ATRAVÉS DO SINÔNIMO:
SELECT SEQ_AULA.CURRVAL FROM DUAL;
--------------------------------------------------------------------------------
-- 3) CRIANDO SINÔNIMO PARA UMA VIEW:
CREATE SYNONYM REL_ALUNO FOR RELATORIO_ALUNOS;

-- QUERY NA VIEW;
SELECT * FROM RELATORIO_ALUNOS;

-- QUERY UTILIZANDO O SINÔNIMO DA VIEW:
SELECT * FROM REL_ALUNO;
--------------------------------------------------------------------------------
-- 4) CASO MÚLTIPLOS USUÁRIOS:

-- SCHEMA VENDAS:
--        TABELAS --> VENDA, VENDA_ITEM
-- SCHEMA CLIENTE:
--        TABELAS --> ENDERECO, TELEFONE, CONTA_BANCARIA

-- SCHEMA CLIENTE ACESSANDO TABELA DE VENDA DO SCHEMA VENDAS:
SELECT * 
  FROM VENDAS.VENDA;
  
-- NO SCHEMA CLIENTE CRIAR UM SINÔNIMO:
CREATE SYNONYM VENDAS FOR VENDAS.VENDA

-- QUERY NA TABELA VENDA DO SCHEMA VENDAS MAS ATRAVÉS DO SINÔNIMO "VENDAS".
-- NESTE CASO EVITA QUE, O SCHEMA CLIENTE TENHA QUE ESPECIFICAR O SCHEMA DA
-- TABELA VENDAS, FICANDO A CONSULTA MENOS VERBOSA:
SELECT *
  FROM VENDAS;
