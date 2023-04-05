--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- MASSA DE DADOS -------------------------------------
------------------------- CURSO / COMENTARIO -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- 1) EXECUTE ESTE COMANDO PARA ALTERAR AS COLUNAS PARA ACEITAR NULOS:
ALTER TABLE COMENTARIO MODIFY ID_COMENTARIO_FILHO NULL;
ALTER TABLE COMENTARIO MODIFY ID_ALUNO NULL;
ALTER TABLE COMENTARIO MODIFY ID_ADMINISTRADOR NULL;
ALTER TABLE COMENTARIO MODIFY ID_PROFESSOR NULL;


-- 2) SELECIONE ESTE BLOCO ANÔNIMO DO DECLARE ATÉ O END E CLIQUE NO BOTÃO VERDE
--    ACIMA CHAMADO "RUN STATEMENT" OU CTRL + ENTER:
DECLARE
V_ID_CURSO  CURSO.ID_CURSO%TYPE;
V_ID_MODULO MODULO.ID_MODULO%TYPE;
V_ID_AULA   AULA.ID_AULA%TYPE;
V_ID_COMENTARIO COMENTARIO.ID_COMENTARIO%TYPE;

BEGIN

  INSERT INTO CURSO (ID_CATEGORIA, NM_TITULO, NM_CURSO, DS_DESCRICAO, VL_PRECO,
                     NR_PERIODO_ACESSO, ST_VITALICIO, DS_URL_IMAGEM)
              VALUES(1, 'Aprenda SQL', 'Curso de SQL', 
                    'Neste curso você aprenderá o básico até o avançado', 600,
                    12, 'N', 'https://devbackend.com.br/img/logo.png')
             RETURN ID_CURSO INTO V_ID_CURSO;
             
  INSERT INTO MODULO (ID_CURSO, NM_TITULO, DS_DESCRICAO, 
                      QT_DIAS_LIBERACAO_ACESSO)
               VALUES(V_ID_CURSO, 'Introdução ao SQL', 
                     'Entenda a importância do SQL no universo Back-end',
                     30)
              RETURN ID_MODULO INTO V_ID_MODULO;
                     
  INSERT INTO AULA (ID_MODULO, NM_TITULO, DS_DESCRICAO, DS_URL_VIDEO)
             VALUES(V_ID_MODULO, 'O que é SQL', 'O que é e como surgiu', 
                    'https://devbackend.com.br/o-que-e.sql')
             RETURN ID_AULA INTO V_ID_AULA;
  
  INSERT INTO COMENTARIO (DS_COMENTARIO, DT_COMENTARIO, ID_AULA, ID_ALUNO)
                  VALUES ('Muito esclarecedor, achei que SQL era algo defasado!',
                          SYSDATE, V_ID_AULA, 2)
                   RETURN ID_COMENTARIO INTO V_ID_COMENTARIO;
  
  INSERT INTO COMENTARIO (DS_COMENTARIO, DT_COMENTARIO, ID_AULA, ID_ALUNO, 
                          ID_COMENTARIO_FILHO)
                  VALUES ('Exatamente! Eu também tinha esse pensamento!',
                          SYSDATE, V_ID_AULA, 6, V_ID_COMENTARIO);                      
                          
  COMMIT;
END;
