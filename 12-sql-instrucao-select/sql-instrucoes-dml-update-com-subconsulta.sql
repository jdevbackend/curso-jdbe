--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- COMANDOS DML -------------------------------------
---------------------- UPDATE COM SUB-CONSULTA ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- UPDATE SIMPLES
UPDATE ALUNO
   SET ID_ESCOLARIDADE = 3
 WHERE ID_ALUNO = 7;  

UPDATE ALUNO
   SET ID_ESCOLARIDADE = 4
 WHERE ID_ALUNO = 8;     

--- UPDATE COM SUB-CONSULTA NO "SET":
UPDATE ADMINISTRADOR
   SET VL_SALARIO = (SELECT MIN(VL_SALARIO)
                       FROM PROFESSOR)
 WHERE ID_ADMINISTRADOR = 11;
 
-- UPDATE COM SUB-CONSULTA NO "SET" E NA CLÁUSULA WHERE:
UPDATE ADMINISTRADOR
   SET VL_SALARIO = (SELECT MIN(VL_SALARIO)
                       FROM PROFESSOR)
 WHERE VL_SALARIO = (SELECT MIN(VL_SALARIO)
                       FROM ADMINISTRADOR);
                       
                       