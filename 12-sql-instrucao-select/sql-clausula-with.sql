--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
------------------------------------ WITH --------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- WITH -> COMMON TABLE EXPRESSION E FAZ PARTE DO PADRÃO ANSI SQL: 99
--------------------------------------------------------------------------------
-- CENÁRIO: PRECISAMOS SABER QUAIS FUNCIONÁRIOS RECEBEM UM SALÁRIO MAIOR QUE A 
-- MÉDIA DE TODOS OS SALÁRIOS DE TODOS OS FUNCIONÁRIOS. PRECISAMOS SABER TAMBÉM 
-- QUAL DEPARTAMENTO O FUNCIONÁRIO ESTÁ.
WITH FUNCIONARIOS AS 
(
  SELECT A.ID_ADMINISTRADOR AS "ID_PESSOA", A.VL_SALARIO, 
         'ADMINISTRAÇÃO' AS "DS_DEPARTAMENTO"
    FROM ADMINISTRADOR A
   UNION ALL
  SELECT P.ID_PROFESSOR AS "ID_PESSOA", P.VL_SALARIO,
         'EDUCAÇÃO' AS "DS_DEPARTAMENTO"
    FROM PROFESSOR P
), MEDIA_SALARIAL AS
(
  SELECT SUM(F.VL_SALARIO) / COUNT(*) AS "VL_MEDIA_SALARIAL"
    FROM FUNCIONARIOS F
)
SELECT P.ID_PESSOA, P.NM_PRIMEIRO_NOME, F.VL_SALARIO, F.DS_DEPARTAMENTO,
       (SELECT VL_MEDIA_SALARIAL FROM MEDIA_SALARIAL) AS "VL_MEDIA_SALARIAL"
  FROM PESSOA P,
       FUNCIONARIOS F
 WHERE P.ID_PESSOA = F.ID_PESSOA
   AND F.VL_SALARIO > (SELECT VL_MEDIA_SALARIAL FROM MEDIA_SALARIAL);
   
   
-- VERIFICANDO OS VALORES DE MÉDIA SALARIAL:
WITH FUNCIONARIOS AS 
(
  SELECT A.ID_ADMINISTRADOR AS "ID_PESSOA", A.VL_SALARIO, 
         'ADMINISTRAÇÃO' AS "DS_DEPARTAMENTO"
    FROM ADMINISTRADOR A
   UNION ALL
  SELECT P.ID_PROFESSOR AS "ID_PESSOA", P.VL_SALARIO,
         'EDUCAÇÃO' AS "DS_DEPARTAMENTO"
    FROM PROFESSOR P
), MEDIA_SALARIAL AS
(
  SELECT SUM(F.VL_SALARIO) / COUNT(*) AS "VL_MEDIA_SALARIAL"
    FROM FUNCIONARIOS F
)
SELECT SUM(VL_SALARIO) AS "VL_TOTAL_SALARIO", 
       COUNT(*) AS "QTD_FUNCIONARIOS",
       SUM(VL_SALARIO) / COUNT(*) "VL_MEDIA_SALARIAL"
  FROM FUNCIONARIOS;