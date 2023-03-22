--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- OPERADORES ARITMÉTICAS ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADORES:
-- SOMA (+)
-- EX. CAMPO NUMÉRICO:
SELECT C.ID_CURSO, 
       C.NM_TITULO, 
       C.VL_PRECO, 
       20 TT_VENDA, 
       (VL_PRECO + 20) TOTAL
  FROM CURSO C;  
-- EX. CAMPO DATA:
SELECT TO_DATE('01/01/2023', 'DD/MM/YYYY'), 
       TO_DATE('01/01/2023', 'DD/MM/YYYY') + 31 DT_FUTURO
  FROM DUAL;
  

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------  
-- SUBTRAÇÃO (-)
-- EX. CAMPO NUMÉRICO:
SELECT C.ID_CURSO, 
       C.NM_TITULO, 
       C.VL_PRECO, 
       20 TT_VENDAS, 
       (VL_PRECO - 20) TOTAL
  FROM CURSO C;

-- EX. CAMPO DATA:  
SELECT TO_DATE('01/01/2023', 'DD/MM/YYYY') DT_ATUAL, 
       TO_DATE('01/01/2023', 'DD/MM/YYYY') - 31 DT_PASSADO
  FROM DUAL;


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- MULTIPLICAÇÃO (*)
SELECT C.ID_CURSO, 
       C.NM_TITULO, 
       C.VL_PRECO, 
       20 TT_VENDAS, 
       (VL_PRECO * 20) TOTAL
  FROM CURSO C;


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DIVISÃO (/)
SELECT C.ID_CURSO, C.NM_TITULO, C.VL_PRECO, (VL_PRECO / 2) TOTAL_DIVIDIDO_2
  FROM CURSO C;