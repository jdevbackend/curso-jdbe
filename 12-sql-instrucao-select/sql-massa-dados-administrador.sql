--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------- MASSA DADOS --------------------------------------
---------------------------- ADMINISTRADOR -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
DECLARE
V_ID_USUARIO USUARIO.ID_USUARIO%TYPE;
V_ID_PESSOA  PESSOA.ID_PESSOA%TYPE;
BEGIN
    
    /** MASSA DADOS DE ADMINISTRADOR **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('adm01', '4dm001', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('11/03/1991','DD/MM/RRRR'), 
                        'Arnaldo', 'Antunes', 938493843, 38394833883, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ADMINISTRADOR VALUES(V_ID_PESSOA, 1200);
    
    /** MASSA DADOS DE ADMINISTRADOR **/
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                 VALUES ('adm02', '4dm002', SYSDATE)
    RETURN ID_USUARIO INTO V_ID_USUARIO;
                 
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO)
                VALUES (V_ID_USUARIO, TO_DATE('10/02/1989','DD/MM/RRRR'), 
                        'Betania', 'Alves', 403939029, 83838933889, SYSDATE)
    RETURN ID_PESSOA INTO V_ID_PESSOA;

    INSERT INTO ADMINISTRADOR VALUES(V_ID_PESSOA, 2000);
    
    
    
    COMMIT;

END;