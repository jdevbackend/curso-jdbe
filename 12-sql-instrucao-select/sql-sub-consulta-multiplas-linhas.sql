--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- SUB-CONSULTA -------------------------------------
--------------------------- MÚLTIPLAS LINHAS -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- OPERADORES DE COMPARAÇÃO DE MULTIPLAS LINHAS:
-- "IN", "ANY E "ALL"
--------------------------------------------------------------------------------
-- DIFERENTE DAS SUB-CONSULTAS DE ÚNICA LINHA QUE DEVEM RETORNAR SOMENTE UMA 
-- ÚNICA LINHA, AS DE MÚLTIPLAS LINHAS PODEM RETORNAR MAIS DE UMA.
-- O OPERADOR DE COMPARAÇÃO QUE UTILIZAMOS NO EXEMPLO ABAIXO É O IN:
SELECT *
  FROM ALUNO
 WHERE ID_ESCOLARIDADE IN (SELECT ID_ESCOLARIDADE
                             FROM ESCOLARIDADE
                            WHERE ID_ESCOLARIDADE IN(1,2,3,4,5));