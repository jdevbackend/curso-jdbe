--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------- MASSA DE DADOS -------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- MASSA DE DADOS PARA AS AULAS DE FUNÇÕES DE GRUPO
DECLARE
V_CD_USUARIO USUARIO.ID_USUARIO%TYPE;
V_CD_PESSOA  PESSOA.ID_PESSOA%TYPE;
BEGIN

    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */
    -- CRIAÇÃO DO USUÁRIO 
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                  VALUES('professor01', 'pr0f01', SYSDATE) 
    RETURN ID_USUARIO INTO V_CD_USUARIO;
                  
    -- CRIAÇÃO DOS DADOS DA PESSOA
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO) 
                 VALUES(V_CD_USUARIO, TO_DATE('10/01/1980','DD/MM/RRRR'),
                        'Pedro', 'Silva', '434343431', '43483838383', SYSDATE)
    RETURN ID_PESSOA INTO V_CD_PESSOA;
    
    INSERT INTO PROFESSOR VALUES(V_CD_PESSOA, 'Professor Especialista em Java',
                                 1500.00);                                 
    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */
    
    
    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                  VALUES('professora02', 'pr0f02', SYSDATE) 
    RETURN ID_USUARIO INTO V_CD_USUARIO;
                  
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO) 
                 VALUES(V_CD_USUARIO, TO_DATE('09/08/1985','DD/MM/RRRR'),
                        'Joana', 'Santos', '584839483', '38383747473', SYSDATE)
    RETURN ID_PESSOA INTO V_CD_PESSOA;
    
    INSERT INTO PROFESSOR VALUES(V_CD_PESSOA, 'Professora Especialista em SQL',
                                 1500.00);
    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */


    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */
    INSERT INTO USUARIO (NM_USUARIO, DS_SENHA, DT_CADASTRO)
                  VALUES('professora03', 'pr0f03', SYSDATE) 
    RETURN ID_USUARIO INTO V_CD_USUARIO;
                  
    INSERT INTO PESSOA (ID_USUARIO, DT_NASCIMENTO, NM_PRIMEIRO_NOME, 
                        NM_SOBRENOME, CD_RG, CD_CPF, DT_CADASTRO) 
                 VALUES(V_CD_USUARIO, TO_DATE('23/12/1984','DD/MM/RRRR'),
                        'Rosangela', 'Alves', '38493844', '98394839828', SYSDATE)
    RETURN ID_PESSOA INTO V_CD_PESSOA;
    
    INSERT INTO PROFESSOR VALUES(V_CD_PESSOA, 
                                 'Professora Especialista em Spring',
                                 2000.00);
    /* INSERÇÃO DE DADOS DO PROFESSOR(A) */    

END;