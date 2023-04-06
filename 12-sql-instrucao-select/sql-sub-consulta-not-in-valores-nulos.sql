--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- SUB-CONSULTA -------------------------------------
--------------------------- MÚLTIPLAS LINHAS -----------------------------------
----------------------------- VALORES NULOS ------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- PARA A REALIZAÇÃO DESTA AULA, EXECUTE OS COMANDOS ABAIXO:

-- ALTERAÇÃO DA COLUNA ID_ESCOLARIDADE PARA ACEITAR VALORES NULOS:
ALTER TABLE ALUNO MODIFY ID_ESCOLARIDADE NULL;

-- ATUALIZANDO REGISTROS PARA VALORES NULOS:
UPDATE ALUNO
   SET ID_ESCOLARIDADE = NULL
 WHERE ID_ALUNO IN(7,8);
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- QUANDO TEMOS UMA SUB-CONSULTA QUE RETORNA VALORES NULOS E ESTAMOS UTILIZANDO
-- O COMPARADOR "NOT IN", A CONSULTA NÃO RETORNARÁ DADOS. ISSO PORQUE A 
-- COMPARAÇÃO QUANDO ENVOLVE NULOS, RESULTA EM UM VALOR NULO:
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE NOT IN (SELECT ID_ESCOLARIDADE 
                                 FROM ALUNO
                                WHERE ID_ALUNO IN(2,6,7,8));

-- PARA TRATAR ESSES CASOS VOCÊ PODE UTILIZAR O NVL PARA TRATAR VALORES NULOS
-- CONSIDERANDO UM VALOR DEFAULT RESPEITANDO AS REGRAS DE NEGÓCIO:
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE NOT IN (SELECT NVL(ID_ESCOLARIDADE, 1)
                                 FROM ALUNO
                                WHERE ID_ALUNO IN(2,6,7,8));

-- OU FILTRAR OS REGISTROS NA SUB-CONSULTA PARA NÃO PERMITIR QUE RETORNE 
-- REGISTROS COM VALORES NULOS:
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE NOT IN (SELECT ID_ESCOLARIDADE 
                                 FROM ALUNO
                                WHERE ID_ALUNO IN(2,6,7,8)
                                  AND ID_ESCOLARIDADE IS NOT NULL);

-- VEJA QUE ESSE PROBLEMA NÃO OCORRE QUANDO UTILIZAMOS O OPERADOR "IN":
SELECT *
  FROM ESCOLARIDADE
 WHERE ID_ESCOLARIDADE IN (SELECT ID_ESCOLARIDADE 
                             FROM ALUNO
                            WHERE ID_ALUNO IN(2,6,7,8));