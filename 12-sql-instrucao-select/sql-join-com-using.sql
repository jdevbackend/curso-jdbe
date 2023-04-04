--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN COM USING --------------------------------
------------------------------- FUNÇÕES DE GRUPO -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- JOIN COM A CLÁUSULA USING: ESPECIFICA A COLUNA QUE DEVERÁ SER UTILIZADA NO 
-- PARA AJUNÇÃO ENTRE AS TABELAS
SELECT *
  FROM ALUNO JOIN
       ESCOLARIDADE USING (ID_ESCOLARIDADE)
 WHERE ID_ESCOLARIDADE = 5;
 

-- A COLUNA UTILIZADA NA EXPRESSÃO USING, NÃO DEVERÁ TER UM QUALIFICADOR. ESSA
-- CONSULTA RETORNARÁ UM ERRO, POIS NA CLÁUSULA WHERE A COLUNA ID_ESCOLARIDADE
-- ESTÁ SENDO REFERENCIADA ATRAVÉS DO QUALIFICADOR "E".
SELECT ID_ALUNO, DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E USING(ID_ESCOLARIDADE)
 WHERE E.ID_ESCOLARIDADE = 5;