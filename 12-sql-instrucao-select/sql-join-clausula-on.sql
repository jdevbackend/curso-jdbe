--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN ------------------------------------------
---------------------------- CLAUSULA ON ---------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CONDIÇÃO DE JOIN E FILTROS ATRAVÉS DA CLÁUSULA WHERE:
SELECT A.ID_ALUNO,
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A,
       ESCOLARIDADE E
 WHERE A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE -- CONDIÇÃO DE JOIN
   AND E.ID_ESCOLARIDADE = 5;                -- FILTRO

-- COM A CLÁUSULA ON, NÓS RETIRAMOS A CONDIÇÃO DE JOIN NA CLÁUSULA WHERE. DESSA
-- FORMA A LEITURA FICA MAIS FLUÍDA, POIS NA SESSÃO FROM, EU ESPECIFÍCO AS TABE
-- LAS E AS CONDIÇÕES DE JOIN, E NA CLÁUSULA WHERE, ESPECIFICAMOS SOMENTE OS 
-- FILTROS DA CONSULTA:
SELECT A.ID_ALUNO,
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E
   ON (A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE) -- CONDIÇÃO DE JOIN NA CLÁUSULA ON
 WHERE E.ID_ESCOLARIDADE = 5;                 -- SOMENTE A CONDIÇÃO DE FILTRO
 
-- NA CLÁUSULA ON NÓS TAMBÉM PODEMOS ESPECIFICAR UMA CONDIÇÃO DE FILTRO. DESSA 
-- FORMA A CLÁUSULA WHERE NÃO É NECESSÁRIA:
SELECT A.ID_ALUNO,
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E
   ON (A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE)
  AND ( E.ID_ESCOLARIDADE = 5);

-- ABAIXO NÓS TEMOS A CONDIÇÃO DE JOIN E UM FILTRO NA CLÁUSULA ON E TAMBÉM 
-- OUTRO FILTRO NA CLÁUSULA WHERE:
SELECT A.ID_ALUNO,
       A.ID_ESCOLARIDADE,
       E.DS_ESCOLARIDADE
  FROM ALUNO A JOIN
       ESCOLARIDADE E
   ON (A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE)
  AND ( E.ID_ESCOLARIDADE = 5)
 WHERE A.ID_ALUNO = 6;

 