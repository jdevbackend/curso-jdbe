--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- OPERADOR DE ASPAS "q"    -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- ESTE OPERADOR PERMITE QUE VOCÊ DEFINA O SEU PRÓPRIO DELIMITADOR DE ASPAS.
-- ELES PODEM SER DO TIPO: [] {} () <>

-- EXEMPLIFICANDO SEM O OPERADOR "q".
-- NESTE CASO EU PRECISO DUPLICAR A ASPAS SIMPLES PARA QUE ELA SEJA REPRESENTADA
-- NO RESULTADO DA MINHA CONSULTA.
SELECT 'It''s a test'
  FROM DUAL;

-- JÁ COM OS OPERADORES Q: [], {}, () E <>:
SELECT q'[It's a test]' -- OPERADOR Q[]
  FROM DUAL;

SELECT q'{It's a test}' -- OPERADOR Q{}
  FROM DUAL;

SELECT q'(It's a test)' -- OPERADOR Q()
  FROM DUAL;
  
SELECT q'<It's a test>' -- OPERADOR Q<>
  FROM DUAL;