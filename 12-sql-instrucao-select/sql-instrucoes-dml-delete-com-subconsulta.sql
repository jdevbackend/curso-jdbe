--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
----------------------- DELETE COM SUB-CONSULTAS -------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DELETE SIMPLES:
DELETE ALUNO
 WHERE ID_ALUNO = 10;

-- DELETE COM SUB-CONSULTA:
DELETE ALUNO
 WHERE ID_ESCOLARIDADE IN(SELECT ID_ESCOLARIDADE
                            FROM ESCOLARIDADE
                           WHERE ID_ESCOLARIDADE IN(3,6)); 

-- PARA DESFAZER A REMOÇÃO DOS REGISTROS, EXECUTE O COMANDO ABAIXO:
ROLLBACK;