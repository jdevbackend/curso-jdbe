--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------------- VIEWS -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- VIEWS: FACILITA A REUTILIZAÇÃO DE QUERIES COMPLEXAS PERSISTINDO-AS COMO UM 
-- OBJETO DE BANCO DE DADOS:
CREATE OR REPLACE VIEW RELATORIO_ALUNOS 
(CODIGO_ALUNO, PRIMEIRO_NOME, SOBRENOME, NASCIMENTO, CPF, ESCOLARIDADE)
AS
SELECT A.ID_ALUNO, 
       P.NM_PRIMEIRO_NOME,
       P.NM_SOBRENOME,
       P.DT_NASCIMENTO,
       P.CD_CPF,
       E.DS_ESCOLARIDADE
  FROM ALUNO A,
       ESCOLARIDADE E,
       PESSOA P
 WHERE A.ID_ESCOLARIDADE = E.ID_ESCOLARIDADE
   AND A.ID_ALUNO = P.ID_PESSOA;


CREATE OR REPLACE VIEW RELATORIO_FUNCIONARIOS AS 
SELECT P.ID_PESSOA, 
       P.NM_PRIMEIRO_NOME,
       P.NM_SOBRENOME,
       P.CD_RG,
       P.CD_CPF,
       P.DT_CADASTRO
  FROM PESSOA P,
       ADMINISTRADOR A
 WHERE P.ID_PESSOA = A.ID_ADMINISTRADOR
UNION ALL
SELECT P.ID_PESSOA, 
       P.NM_PRIMEIRO_NOME,
       P.NM_SOBRENOME,
       P.CD_RG,
       P.CD_CPF,
       P.DT_CADASTRO
  FROM PESSOA P,
       PROFESSOR PF
 WHERE P.ID_PESSOA = PF.ID_PROFESSOR;
