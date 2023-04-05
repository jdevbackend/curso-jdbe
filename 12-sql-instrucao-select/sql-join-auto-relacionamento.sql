--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------------- JOIN ------------------------------------------
------------------------------ AUTO-JOIN ---------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- AUTO JOIN OU AUTO RELACIONAMENTO: QUANDO EU RELACIONO UMA TABELA COM ELA 
-- MESMA. NO NOSSO MODELO NÓS TEMOS COMO EXEMPLO A TABELA COMENTÁRIO QUE É 
-- RESPONSÁVEL POR PERSISTIR TODOS OS COMENTÁRIOS DE UMA AULA:
SELECT *
  FROM COMENTARIO PAI JOIN
       COMENTARIO FILHO ON
      (PAI.ID_COMENTARIO = FILHO.ID_COMENTARIO_FILHO);