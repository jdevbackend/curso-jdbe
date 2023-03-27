--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- ADICIONANDO LÓGICAS --------------------------------
---------------------------- NAS CONSULTAS SQL ---------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DECODE:
SELECT ID_ESCOLARIDADE,
       DS_ESCOLARIDADE,
       DECODE(DS_ESCOLARIDADE, 
             'Cursando Ensino Fundamental', 'Cursar Lógica de Programação',
             'Graduação Completa', 'Cursar Formação Back-end',
       'Sem sugestões')
  FROM ESCOLARIDADE;

-- EXEMPLO COM CÁLCULO  
SELECT ID_ESCOLARIDADE,
       DS_ESCOLARIDADE,
       DECODE(DS_ESCOLARIDADE, 
             'Cursando Ensino Fundamental', 110 * 2,
             'Graduação Completa', 110 * 3,
       110)
  FROM ESCOLARIDADE;