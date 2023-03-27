--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- ADICIONANDO LÓGICAS --------------------------------
---------------------------- NAS CONSULTAS SQL ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- INSTRUÇÃO CASE: VALIDANDO VALOR DE COLUNA:
SELECT ID_ESCOLARIDADE,
       DS_ESCOLARIDADE,
       CASE DS_ESCOLARIDADE 
         WHEN 'Cursando Ensino Fundamental'
           THEN 'Fazer curso de lógica de Programação'
         WHEN 'Cursando Graduação'
           THEN 'Fazer curso de Java'
         ELSE 'Sem sugestões'
       END AS "SUGESTAO_CURSO"
  FROM ESCOLARIDADE;

-- EXPRESSÃO CASE COM CHECAGEM DE VALOR:
SELECT ID_ESCOLARIDADE,
       DS_ESCOLARIDADE,
       CASE WHEN ID_ESCOLARIDADE <= 4
           THEN 'Fazer curso de lógica de Programação'
         WHEN ID_ESCOLARIDADE > 4 AND ID_ESCOLARIDADE < 7
           THEN 'Fazer curso de Java'
         ELSE 'Sem sugestões'
       END AS "SUGESTAO_CURSO"
  FROM ESCOLARIDADE;