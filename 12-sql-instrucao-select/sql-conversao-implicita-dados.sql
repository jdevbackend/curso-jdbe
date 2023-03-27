--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- CONVERSÃO DE DADOS -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- CONVERSÃO IMPLICITA: --------------------------------

-- QUANDO O ORACLE CONSEGUE DE FORMA AUTOMÁTICA REALIZAR A CONVERSÃO
-- DO DADO, MAS PARA ISSO, EM ALGUNS CASOS, O DADO PRECISA SER UM DADO VÁLIDO DE
-- ACORDO COM O TIPO DO DADO QUE ELE SERÁ CONVERTIDO (DESTINO).

--------------------------------------------------------------------------------
-- FORMATO ORIGEM | FORMATO DESTINO|                OBSERVAÇÃO
--------------------------------------------------------------------------------
-- VARCHAR-CHAR   | NUMBER         |VALOR DA STRING TEM QUE SER UM NUMERO VÁLIDO
-- VARCHAR-CHAR   | DATA           |VALOR DA STRING TEM QUE SER UMA DATA VÁLIDA
-- NUMBER         | VARCHAR-CHAR   |                    -
-- DATA           | VARCHAR-CHAR   |                    -
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- EXEMPLO: TEREMOS UMA TABELA COM TODOS OS TIPOS QUE SERÃO TRABALHOS NA AULA
--------------------------------------------------------------------------------


-- TABELA CONVERSAO_DADOS:
CREATE TABLE CONVERSAO_DADOS(COL_NUMBER NUMBER(12,2),
                             COL_DATE   DATE,
                             COL_STRING VARCHAR2(100));

--------------------------------------------------------------------------------
-- CONVERSÃO DE STRING/VARCHAR PARA NUMBER:
--------------------------------------------------------------------------------
-- ERRO: INVALID NUMBER POIS ABC É UMA STRING INVÁLIDA
INSERT INTO CONVERSAO_DADOS(COL_NUMBER) VALUES('ABC');

-- ERRO: INVALID NUMBER POIS 200.12 O ORACLE RECONHECE COMO UMA STRING INVÁLIDA
INSERT INTO CONVERSAO_DADOS(COL_NUMBER) VALUES('200.12');

-- INSERÇÃO REALIZADA COM SUCESSO ONDE A CONVERSÃO PARA NUMBER FOI REALIZADA
INSERT INTO CONVERSAO_DADOS(COL_NUMBER) VALUES('200');

-- INSERÇÃO REALIZADA COM SUCESSO ONDE A CONVERSÃO PARA NUMBER FOI REALIZADA
INSERT INTO CONVERSAO_DADOS(COL_NUMBER) VALUES('200,12');


--------------------------------------------------------------------------------
-- CONVERSÃO DE STRING/VARCHAR PARA DATE:
--------------------------------------------------------------------------------

-- ERRO: UM CARACTER NÃO NUMÉRICO FOI ENCONTRADO ONDE UM NUMÉRICO ERA ESPERADO
INSERT INTO CONVERSAO_DADOS(COL_DATE) VALUES ('ABC');

-- INSERÇÃO REALIZADA COM SUCESSO ONDE A CONVERSÃO PARA DATA FOI REALIZADA
INSERT INTO CONVERSAO_DADOS(COL_DATE) VALUES ('01-JAN-2024');

--------------------------------------------------------------------------------
-- CONVERSÃO DE NUMBER PARA STRING/VARCHAR:
--------------------------------------------------------------------------------

-- INSERÇÕES REALIZADAS COM SUCESSO:
INSERT INTO CONVERSAO_DADOS(COL_STRING) VALUES(200);
INSERT INTO CONVERSAO_DADOS(COL_STRING) VALUES(2921.11);

--------------------------------------------------------------------------------
-- CONVERSÃO DE DATA PARA STRING/VARCHAR:
--------------------------------------------------------------------------------

-- INSERÇÃO REALIZADA COM SUCESSO:
INSERT INTO CONVERSAO_DADOS(COL_STRING) VALUES(TO_DATE(SYSDATE,'DD/MM/RRRR'));
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------