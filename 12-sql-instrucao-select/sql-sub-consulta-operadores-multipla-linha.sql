--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- SUB-CONSULTA -------------------------------------
--------------------------- MÚLTIPLAS LINHAS -----------------------------------
----------------------- OPERADORES IN/ALL E ANY --------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADORES DE COMPARAÇÃO DE MULTIPLAS LINHAS:
-- "IN", "ANY E "ALL"
-- É POSSÍVEL USAR O OPERADOR NOT EM TODOS ELES:

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADOR IN:
SELECT *
  FROM ALUNO
 WHERE ID_ESCOLARIDADE IN(SELECT ID_ESCOLARIDADE 
                            FROM ESCOLARIDADE 
                           WHERE ID_ESCOLARIDADE IN(1,3,4,5));
                           
SELECT *
  FROM ALUNO
 WHERE ID_ESCOLARIDADE NOT IN(SELECT ID_ESCOLARIDADE 
                                FROM ESCOLARIDADE 
                               WHERE ID_ESCOLARIDADE IN(1,3,4,5));
                    
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADOR ANY:
-- < ANY: MENOR QUE O VALOR MÁXIMO
SELECT *
  FROM PROFESSOR
 WHERE VL_SALARIO < ANY (SELECT VL_SALARIO
                           FROM ADMINISTRADOR);

-- > ANY: MAIOR QUE O VALOR MÍNIMO
SELECT *
  FROM PROFESSOR
 WHERE VL_SALARIO > ANY (SELECT VL_SALARIO
                           FROM ADMINISTRADOR);
                           
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADOR ALL:
-- < ALL: MENOR QUE O VALOR MÍNIMO
SELECT *
  FROM PROFESSOR
 WHERE VL_SALARIO < ALL (SELECT VL_SALARIO
                           FROM ADMINISTRADOR);

-- > ALL: MAIOR QUE O VALOR MÁXIMO
SELECT *
  FROM PROFESSOR
 WHERE VL_SALARIO > ALL (SELECT VL_SALARIO
                           FROM ADMINISTRADOR);
