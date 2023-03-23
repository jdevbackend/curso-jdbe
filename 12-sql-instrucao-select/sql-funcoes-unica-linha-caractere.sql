--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- FUNÇÕES DE UMA ÚNICA LINHA -----------------------------
---------------------------- STRING / CARACTERE --------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- AS FUNÇÕES DE ÚNICA LINHA ELAS PODEM SER INVOCADAS NA SESSÃO:
   -- SELECT, WHERE E ORDER BY.

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- FUNÇÕES DE MANIPULAÇÃO DE MAIUSCULAS E MINUSCULAS
-- UPPER:
SELECT DS_ESCOLARIDADE,
       UPPER(DS_ESCOLARIDADE) LETRAS_EM_MAIUSCULO
  FROM ESCOLARIDADE;

-- LOWER:
SELECT DS_ESCOLARIDADE,
       LOWER(DS_ESCOLARIDADE) LETRAS_EM_MINUSCULO
  FROM ESCOLARIDADE;

-- INITCAP:
SELECT DS_ESCOLARIDADE,
       LOWER(DS_ESCOLARIDADE) LETRAS_EM_MINUSCULO,
       INITCAP(LOWER(DS_ESCOLARIDADE)) COM_INITCAP
  FROM ESCOLARIDADE;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- FUNÇÕES DE MANIPULAÇÃO DE CARACTERE:
-- CONCAT(STRING01, STRING02) -> EQUIVALENTE AO ||
SELECT NM_TITULO, 
       NM_CURSO, 
       CONCAT(NM_TITULO, NM_CURSO) TIT_NOM
  FROM CURSO;
  
-- SUBSTR('STRING', POSICAO_INICIAL, POSICAO_FINAL)
SELECT NM_TITULO, 
       SUBSTR(NM_TITULO,1,10) STRING_FATIADA
  FROM CURSO;
  
-- LENGTH
SELECT NM_TITULO, 
       LENGTH(NM_TITULO) TAMANHO_STRING
  FROM CURSO;
  
-- INSTR
SELECT DS_ESCOLARIDADE,  
       INSTR(DS_ESCOLARIDADE, 'Complet')
  FROM ESCOLARIDADE;
  
-- RPAD
SELECT DS_ESCOLARIDADE,
       LENGTH(DS_ESCOLARIDADE) LENGTH_DESC_ESCOL,
       RPAD(DS_ESCOLARIDADE, 40, '-') RPAD_STRING,
       LENGTH(RPAD(DS_ESCOLARIDADE, 40, '-')) LENGTH_EXPRESSAO
  FROM ESCOLARIDADE;
  
-- LPAD
SELECT DS_ESCOLARIDADE,
       LENGTH(DS_ESCOLARIDADE) LENGTH_DESC_ESCOL,
       LPAD(DS_ESCOLARIDADE, 40, '-') RPAD_STRING,
       LENGTH(LPAD(DS_ESCOLARIDADE, 40, '-')) LENGTH_EXPRESSAO
  FROM ESCOLARIDADE;
  
-- REPLACE
SELECT DS_ESCOLARIDADE,
       REPLACE(DS_ESCOLARIDADE, 'Complet', 'Incomplet') REPLACE_STR
  FROM ESCOLARIDADE;
  
-- TRIM
SELECT TRIM('C' FROM DS_ESCOLARIDADE)
  FROM ESCOLARIDADE;