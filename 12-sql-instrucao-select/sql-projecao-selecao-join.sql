--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- PROJEÇÃO/SELEÇÃO E JOIN --------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- PROJEÇÃO: SELEÇÃO DE COLUNAS ESPECÍFICAS DE UMA OU MAIS TABELAS NA CONSULTA 
-- SQL
SELECT ID_CATEGORIA
  FROM CATEGORIA;

-- PROJEÇÃO: SELECIONANDO SOMENTE A COLUNA DS_CATEGORIA
SELECT DS_CATEGORIA
  FROM CATEGORIA;
  
  
--------------------------------------------------------------------------------
-------------------------------------------------------------------------------- 
-- SELEÇÃO: SELEÇÃO DE REGISTROS ESPECÍFICOS NA MINHA CONSULTA SQL ATRAVÉS DA
-- CLÁUSULA "WHERE". SELEÇÃO ENTENDA COMO FILTRO DA CONSULTA
SELECT *
  FROM CATEGORIA
 WHERE ID_CATEGORIA = 2; -- SELECIONANDO SOMENTE A CATEGORIA COM ID IGUAL A 2

-- ESTE EXEMPLO RETORNARÁ 2 REGISTROS. ESTE CENÁRIO FOI CRIADO PARA EXEMPLIFICAR
-- O USO DA INSTRUÇÃO "DISTINCT"
SELECT *
  FROM CATEGORIA
 WHERE DS_CATEGORIA = 'Devops'; -- SELECIONANDO CATEGORIA COM A DESCRIÇÃO IGUAL 
                                -- A "Devops"
 
SELECT *
  FROM CATEGORIA
 WHERE DS_CATEGORIA = 'DEVOPS'; -- ESTE EXEMPLO MOSTRA QUE "Devops" NÃO É IGUAL
                                -- A DEVOPS. O ORACLE FAZ DISTINÇÃO DE 
                                -- MAÍUSCULAS E MINÚSCULAS
 
-- COMBINANDO PROJEÇÃO + SELEÇÃO
SELECT DS_CATEGORIA
  FROM CATEGORIA
 WHERE DS_CATEGORIA = 'DEVOPS';
 
-- COMBINAÇÃO PROJEÇÃO + SELEÇÃO COM DISTINCT
SELECT DISTINCT DS_CATEGORIA
  FROM CATEGORIA
 WHERE DS_CATEGORIA = 'Devops';
 
 
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- JOIN: JUNÇÃO DE DUAS OU MAIS TABELAS

-- MASSA DE DADOS PARA EXEMPLIFICAÇÃO DO JOIN ENTRE AS TABELAS CURSO E CATEGORIA
INSERT INTO CURSO(ID_CATEGORIA,NM_TITULO, NM_CURSO, DS_DESCRICAO, DS_URL_IMAGEM, 
VL_PRECO,NR_PERIODO_ACESSO, ST_VITALICIO)
VALUES(1, 'Linguagem SQL', 'Introdução à Linguagem SQL Oracle',
'Aprenda a Linguagem padrão de consulta para bancos relacionais', 
'https://devbackend.com.br/sql.png', 427.99, 12, 'N');

INSERT INTO CURSO(ID_CATEGORIA,NM_TITULO, NM_CURSO, DS_DESCRICAO, DS_URL_IMAGEM, 
VL_PRECO,NR_PERIODO_ACESSO, ST_VITALICIO)
VALUES(2, 'Linguagem Java', 'Introdução à Linguagem Java',
'Aprenda a Linguagem mais popular e multi-plataforma', 
'https://devbackend.com.br/java.png', 747.99, 12, 'N');
COMMIT;

-- JOIN: JUNÇÃO DAS TABELAS CURSO E CATEGORIA ATRAVÉS DA COLUNA "ID_CURSO"
SELECT CUR.ID_CURSO          AS "Id. Curso", 
       CUR.NM_CURSO          AS "Nm. Curso", 
       CUR.VL_PRECO          AS "Preço",  
       CUR.NR_PERIODO_ACESSO AS "Acesso em Meses",
       CAT.DS_CATEGORIA      AS "Categoria"
  FROM CURSO CUR, 
       CATEGORIA CAT
 WHERE CUR.ID_CATEGORIA = CAT.ID_CATEGORIA;


  