--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------- SEQUENCE -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 01) CRIANDO A SEQUENCE COM VALORES MÁXIMOS:
CREATE SEQUENCE NOME_TABELA_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10;

-- EXECUTE ESTA QUERY ATÉ ELA CHEGAR NO VALOR MÁXIMO DA SEQUENCE, QUE É 10:
SELECT NOME_TABELA_SEQ.NEXTVAL FROM DUAL;

-- ALTERE A SEQUENCE PARA ELA NÃO TER VALOR MÁXIMO:
ALTER SEQUENCE NOME_TABELA_SEQ NOMAXVALUE;

-- TIRANDO O VALOR MÁXIMO É POSSÍVEL CONTINUAR A GERAR VALORES NA SEQUENCE:
SELECT NOME_TABELA_SEQ.NEXTVAL FROM DUAL;

-- ALTERANDO OS VALORES DE INCREMENTO E VALRO MÁXIMO:
ALTER SEQUENCE NOME_TABELA_SEQ INCREMENT BY 2 MAXVALUE 20;

-- EXECUTE ESTA CONSULTA ATÉ A SEQUENCE ALCANÇAR O VALOR MÁXIMO 20:
SELECT NOME_TABELA_SEQ.NEXTVAL FROM DUAL;

-- ALTERE A SEQUENCE PARA ELA NÃO ARMAZENAR CACHE E REINICIÁ-LA EM UM NOVO CICLO:
ALTER SEQUENCE NOME_TABELA_SEQ CYCLE NOCACHE;

-- EXECUTE A QUERY ATÉ ELA REINICIAR A CONTAGEM A PARTIR DO 1:
SELECT NOME_TABELA_SEQ.CURRVAL FROM DUAL;

-- CRIANDO UMA SEQUENCE COM REPETIÇÃO DE CICLO.
-- OBS: SE A SEQUENCE FOR UTILIZADA NUMA COLUNA DE CHAVE PRIMÁRIA, NÃO UTILIZE
-- O CYCLE, POIS AO ATINGIR O VALOR MÁXIMO DA SEQUENCE, ELA REINICIARÁ A CONTA
-- GEM À PARTIR DO QUE FOI DEFINIDO NO START WITH, OU SEJA: 1.
CREATE SEQUENCE NOME_TABELA_01_SEQ START WITH 1 INCREMENT BY 2 
MAXVALUE 10 CYCLE NOCACHE;

-- EXECUTE ESTA QUERY ATÉ O CICLO COMECÁR A REPETIR A PARTIR DO 1:
SELECT NOME_TABELA_01_SEQ.NEXTVAL FROM DUAL;

-- REMOVENDO AS SEQUENCES:
DROP SEQUENCE NOME_TABELA_SEQ;
DROP SEQUENCE NOME_TABELA_01_SEQ;