--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------- CHAR, VARCHAR E VARCHAR2 --------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CHAR --> TIPO DE DADOS PARA CARACTER. TAMANHO FIXO. CAPACIDADE DE ARMAZENAMENTO 
     --  DE ATÉ 2000 BYTES;
--------------------------------------------------------------------------------
-- CRIANDO TABELA
CREATE TABLE STRING_CHAR(COL_CHAR CHAR(10));

-- INSERINDO O DADO
INSERT INTO STRING_CHAR VALUES('ALGO');

-- VERIFICANDO O TAMANHO DA STRING:
SELECT LENGTH(COL_CHAR) FROM STRING_CHAR;

--------------------------------------------------------------------------------
VARCHAR --> TIPO DE DADOS PARA CARACTER PADRÃO ANSI. 
        --> TAMANHO VARIÁVEL DE ATÉ: 4000BYTES
        --> PORÉM, SE O PARÂMETRO MAX_STRING_SIZE ESTIVER CONFIGURADO COM 
        --> EXTENDED, O VARCHAR ACEITA ATÉ 32.767 BYTES;
        --> AUTONOMOUS DATABASE VEM POR PADRÃO COM O MAX_STRING_SIZE=EXTENDED.

CREATE TABLE STRING_VARCHAR(COL_VARCHAR VARCHAR(10));

-- INSERINDO O DADO
INSERT INTO STRING_VARCHAR VALUES('ALGO');

-- VERIFICANDO O TAMANHO DA STRING:
SELECT LENGTH(COL_VARCHAR) FROM STRING_VARCHAR;

VARCHAR2 --> MESMO QUE VARCHAR. NÃO HÁ DIFERENÇAS, CONTUDO, SE ESTIVER USANDO
         --> BANCO DE DADOS ORACLE, RECOMENDA-SE UTILIZAR O TIPO VARCHAR2.
--------------------------------------------------------------------------------
-- REMOVENDO TABELAS:
DROP TABLE STRING_CHAR;
DROP TABLE STRING_VARCHAR;
