--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- CRIANDO O SCHEMA/USER  ------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
CREATE USER JDBE_TREINAMENTOS IDENTIFIED BY JDB3TR3IN4M3NT0s2023
DEFAULT TABLESPACE USERS
QUOTA UNLIMITED ON USERS;

-- ATRIBUINDO PERMISSÕES
GRANT RESOURCE, CONNECT TO JDBE_TREINAMENTOS;