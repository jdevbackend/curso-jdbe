--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- MASSA DADOS --------------------------------------
------------------------------- ALUNOS -----------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
V_ID_USUARIO USUARIO.ID_USUARIO%TYPE;
V_ID_PESSOA PESSOA.ID_PESSOA%TYPE;
BEGIN
    
    /** MASSA DADOS DE ALUNO **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('aluno01', '4lun001', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('11/11/1991','DD/MM/RRRR'), 
                        'Rogério', 'Sousa', 89384983, 93828329898, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ALUNO VALUES(V_ID_PESSOA, 5);
    
    /** MASSA DADOS DE ALUNO **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('aluno02', '4lun002', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('10/12/1994','DD/MM/RRRR'), 
                        'Pedro', 'Rodrigues', 834938443, 90384338933, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ALUNO VALUES(V_ID_PESSOA, 5);
    
    
    /** MASSA DADOS DE ALUNO **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('aluno03', '4lun003', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('02/07/1991','DD/MM/RRRR'), 
                        'Aline', 'Bezerra', 039483902, 83839388227, SYSDATE)
              RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ALUNO VALUES(V_ID_PESSOA, 5);
    
    
    /** MASSA DADOS DE ALUNO **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('aluno04', '4lun004', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('20/06/1988','DD/MM/RRRR'), 
                        'Joana', 'Albuquerque', 248398483, 93094876372, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ALUNO VALUES(V_ID_PESSOA, 6);
    
    
    /** MASSA DADOS DE ALUNO **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('aluno05', '4lun005', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('20/09/1985','DD/MM/RRRR'), 
                        'Patricia', 'Souza', 930392783, 39038764637, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ALUNO VALUES(V_ID_PESSOA, 8);
    
    COMMIT;

END;
