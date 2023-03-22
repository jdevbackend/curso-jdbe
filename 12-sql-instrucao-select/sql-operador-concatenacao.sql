--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- OPERADOR DE CONCATENAÇÃO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- PARA JUNÇÃO DE STRINGS LITERAIS, COLUNAS, E NÚMEROS, UTILIZE O OPERADOR PIPE:
-- EXEMMPLO: -> "||"
SELECT 'Título: ' || NM_TITULO || ' Nm. Curso: ' || NM_CURSO
  FROM CURSO;
  
SELECT NM_TITULO || ', ' || NM_CURSO || ', ' || VL_PRECO
  FROM CURSO; -- EXEMPLO CONCATENANDO COLUNAS DO TIPO STRING, NUMEROS E CARACTER
              -- LITERAL.