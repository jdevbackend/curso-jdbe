--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------- LIMITANDO LINHAS POR SELEÇÃO ---------------------------
------------------------------ CLAUSULA WHERE ----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- CRIANDO MASSA DE DADOS DO ALUNO;
INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
VALUES('cursojdbe@gmail.com', 'cursojdbe', SYSDATE);


INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, NM_SOBRENOME, 
CD_RG, CD_CPF) VALUES(3, TO_DATE('20/10/1987', 'DD/MM/RRRR'), 
'Joana Santos', 'Pereira', 434343434, 34343433443);

INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Cursando Ensino Fundamental');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Ensino Fundamental Completo');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Cursando Ensino Médio');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Ensino Médio Completo');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Cursando Graduação');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Graduação Completa');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Cursando Pós-Graduação');
INSERT INTO ESCOLARIDADE(DS_ESCOLARIDADE) VALUES('Pós-Graduação Completo');

INSERT INTO ALUNO VALUES(2, 1);
COMMIT;

-- FILTRANDO REGISTROS ATRAVÉS DA COMPARAÇÃO DE COLUNAS DO TIPO NUMÉRICO
SELECT *
  FROM CURSO
 WHERE ID_CURSO = 1;
 
SELECT *
  FROM CURSO
 WHERE VL_PRECO = 427.99;
 
-- FILTRANDO REGISTROS ATRAVÉS DA COMPARAÇÃO DE COLUNAS DO TIPO TEXTO
SELECT *
  FROM CURSO
 WHERE NM_TITULO = 'Linguagem SQL';

-- FILTRANDO REGISTROS ATRAVÉS DA COMPARAÇÃO DE COLUNAS DO TIPO DATA
SELECT *
  FROM PESSOA
 WHERE DT_NASCIMENTO = '20/10/87';
 
SELECT *
  FROM PESSOA
 WHERE DT_NASCIMENTO = TO_DATE('20/10/1987', 'DD/MM/YYYY');