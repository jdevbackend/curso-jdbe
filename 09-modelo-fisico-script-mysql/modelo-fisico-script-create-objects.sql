-- Script de criação do Modelo de dados da JDBE para o SGBD PostgreSQL
CREATE TABLE administrador (
    id_administrador INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Salário do Administrador',
    vl_salario       DECIMAL(8, 2) NOT NULL COMMENT 'Valor do salário',
    PRIMARY KEY (id_administrador)
) COMMENT 'Entidade responsável por persistir dados do Administrador.';

CREATE TABLE aluno (
    id_aluno        INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador do aluno.',
    id_escolaridade INTEGER NOT NULL COMMENT 'Identificador da escolaridade do aluno.',
    PRIMARY KEY (id_aluno)
) COMMENT 'Entidade responsável por persistir dados dos alunos';


CREATE TABLE aula (
    id_aula      INTEGER NOT NULL AUTO_INCREMENT,
    id_modulo    INTEGER NOT NULL,
    nm_titulo    VARCHAR(30) NOT NULL COMMENT 'Título da aula',
    ds_descricao VARCHAR(2000) NOT NULL COMMENT 'Descrição detalhada da aula.',
    ds_url_video VARCHAR(2000) NOT NULL COMMENT 'URL da video aula que está armazenado no Bucket S3.',
    PRIMARY KEY (id_aula)
) COMMENT 'Entidade responsável por armazenar aulas.';


CREATE TABLE avaliacao (
    id_aula     INTEGER NOT NULL COMMENT 'Identificador da aula.',
    id_aluno    INTEGER NOT NULL,
    qt_estrelas INTEGER NOT NULL COMMENT 'Quantidade de estrelas de 1 a 5.'
) COMMENT 'Tabela responsável por armazenar os dados de avaliação das aulas.';

ALTER TABLE avaliacao
    ADD CONSTRAINT avaliacao_ck CHECK ( qt_estrelas IN ( 1, 2, 3, 4, 5 ) );

ALTER TABLE avaliacao ADD CONSTRAINT avaliacao_pk PRIMARY KEY ( id_aula,
                                                                id_aluno );

CREATE TABLE categoria (
    id_categoria INTEGER AUTO_INCREMENT COMMENT 'Identificador numérico sequencial.',
    ds_categoria VARCHAR(30) COMMENT 'Categorias: Banco da dos, Back-end, Front-End, Arquitetura.',
    PRIMARY KEY (id_categoria)
) COMMENT 'Entidade responsável por persistir dados da categoria de cursos';


CREATE TABLE cidade (
    id_cidade INTEGER AUTO_INCREMENT COMMENT 'Identificador numérico cidade.',
    nm_cidade VARCHAR(100) NOT NULL COMMENT 'Nome da cidade.',
    cd_estado VARCHAR(2) NOT NULL COMMENT 'Código do Estado.',
    PRIMARY KEY (id_cidade)
) COMMENT 'Entidade responsável por persistir dados da cidade';

CREATE TABLE comentario (
    id_comentario       INTEGER AUTO_INCREMENT ,
    id_comentario_filho INTEGER NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    ds_comentario       VARCHAR(1000) NOT NULL COMMENT 'Comentário.',
    st_status           VARCHAR(1) DEFAULT 'N' COMMENT 'Identifica se o comentário foi aprovado pela área administrativa. S/N',
    dt_comentario       DATE NOT NULL,
    id_aula             INTEGER NOT NULL,
    id_aluno            INTEGER NOT NULL,
    id_administrador    INTEGER NOT NULL,
    id_professor        INTEGER NOT NULL,
    PRIMARY KEY (id_comentario)
) COMMENT 'Tabela responsável por persistir comentários de uma aula.';

CREATE TABLE curso (
    id_curso          INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    id_categoria      INTEGER
    NOT NULL,
    nm_titulo         VARCHAR(20) COMMENT 'Título do curso.',
    nm_curso          VARCHAR(100) NOT NULL COMMENT 'Nome do curso.',
    ds_descricao      VARCHAR(2300) NOT NULL COMMENT 'Descrição detalhada do curso.',
    ds_url_imagem     VARCHAR(2000) NOT NULL COMMENT 'URL da imagem de capa do curso. Estará armazenado em um Bucket S3.',
    vl_preco          DECIMAL(8, 2) NOT NULL COMMENT 'Valor do curso.',
    nr_periodo_acesso INTEGER NOT NULL COMMENT 'Período de acesso ao curso.  Será considerado em meses.',
    st_vitalicio      VARCHAR(1) NOT NULL COMMENT 'Indica se o curso é vitalício ou não. S/N',
    PRIMARY KEY(id_curso)
) COMMENT 'Tabela responsável por persistir todos os cursos.';

ALTER TABLE curso
    ADD CHECK ( st_vitalicio IN ( 'N', 'S' ) );

CREATE TABLE detalhe_transacao_erro (
    id_erro      INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    id_matricula INTEGER NOT NULL,
    nr_erro      VARCHAR(5) NOT NULL COMMENT 'Número do erro na API de pagamento.',
    ds_erro      VARCHAR(2000) NOT NULL COMMENT 'Descrição do erro devolvida pela API de pagamento.',
    dt_erro      DATE NOT NULL COMMENT 'Data em que o erro ocorreu.',
    PRIMARY KEY(id_erro)
) COMMENT 'Entidade responsável por armazenar as mensagens de erro que podem acontecer com a API de pagamento.';


CREATE TABLE endereco (
    id_endereco   INTEGER AUTO_INCREMENT NOT NULL ,
    id_cidade     INTEGER NOT NULL,
    id_aluno      INTEGER NOT NULL,
    nm_logradouro VARCHAR(100) NOT NULL COMMENT 'Nome do logradouro onde o aluno reside.',
    nr_logradouro VARCHAR(5) NOT NULL COMMENT 'Número do logradouro.',
    cd_cep        INTEGER(8) NOT NULL COMMENT 'CEP referente ao logradouro.',
    PRIMARY KEY(id_endereco)
) COMMENT 'Entidade responsável por persistir dados do endereço.';


CREATE TABLE escolaridade (
    id_escolaridade INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único.',
    ds_escolaridade VARCHAR(30) COMMENT  'Escolaridade do aluno, exemplo: Esino Fundamental, Esino médio, Graduação, Pós-Graduação e etc.',
    PRIMARY KEY(id_escolaridade)
) COMMENT 'Entidade responsável por persistir dados dos tipos de escolaridades';

CREATE TABLE evolucao_aulas (
    id_aula      INTEGER NOT NULL COMMENT 'Identificador da aula.',
    id_aluno     INTEGER NOT NULL,
    st_concluido CHAR(1) DEFAULT 'N' NOT NULL COMMENT 'Indica se a áula foi concluída/assistida: S/N.',
    dt_concluido DATE NOT NULL COMMENT 'Data de conclusão da aula.'
) COMMENT 'Entidade responsável por armazenar a evolução/progresso do aluno perante as aulas.';

ALTER TABLE evolucao_aulas
    ADD CONSTRAINT evolucao_aula_ck CHECK ( st_concluido IN ( 'N', 'S' ) );

ALTER TABLE evolucao_aulas ADD CONSTRAINT evolucao_aulas_pk PRIMARY KEY ( id_aula,
                                                                          id_aluno );

CREATE TABLE matricula (
    id_matricula INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    id_curso     INTEGER NOT NULL,
    id_aluno     INTEGER,
    dt_matricula DATE NOT NULL COMMENT 'Data em que a matrícula foi efetuada.',
    dt_vigencia  DATE NOT NULL COMMENT 'Data da vigência da matrícula.',
    st_status    VARCHAR(1) DEFAULT 'P' NOT NULL COMMENT 'Status da matricula que pode ser:
P-Pendente pagamento
A-Ativo
I-Inativo por tempo de acesso expirado',
    PRIMARY KEY (id_matricula)
) COMMENT 'Entidade responsável por persistir dados da matrícula. Ela é responsável por descrever quem comprou, quando e qual curso foi adquirido na plataforma, bem como seu status.';

ALTER TABLE matricula
    ADD CONSTRAINT matricula_ck CHECK ( st_status IN ( 'A', 'I', 'P' ) );

ALTER TABLE matricula ADD CONSTRAINT matricula_id_curso_un UNIQUE ( id_curso );

CREATE TABLE modulo (
    id_modulo                INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    id_curso                 INTEGER NOT NULL,
    nm_titulo                VARCHAR(30) NOT NULL COMMENT 'Título do módulo.',
    ds_descricao             VARCHAR(2000) NOT NULL COMMENT 'Descrição do módulo.',
    qt_dias_liberacao_acesso INTEGER DEFAULT 0 NOT NULL COMMENT 'Quantidade em dias em que o módulo ficará disponível para acesso.',
    PRIMARY KEY (id_modulo)
) COMMENT  'Tabela responsável por armazenar todos os módulos.';

CREATE TABLE pessoa (
    id_pessoa        INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único.',
    id_usuario       INTEGER NOT NULL,
    dt_nascimento    DATE NOT NULL COMMENT 'Data de nascimento.',
    nm_primeiro_nome VARCHAR(100) NOT NULL COMMENT 'Nome completo.',
    nm_sobrenome     VARCHAR(100) NOT NULL COMMENT 'Sobrenome da pessoa.',
    cd_rg            VARCHAR(10) NOT NULL COMMENT 'Número do RG  da pessoa.',
    cd_cpf           INTEGER(11) NOT NULL COMMENT 'Número do CPF da pessoa.',
    PRIMARY KEY (id_pessoa)
) COMMENT  'Entidade responsável por persistir dados do administrador da plataforma.';

CREATE UNIQUE INDEX pessoa__idx ON
    pessoa (
        id_usuario
    ASC );

CREATE TABLE professor (
    id_professor       INTEGER NOT NULL,
    ds_sobre_instrutor VARCHAR(2000) NOT NULL COMMENT 'Descrição sobre o instrutor.',
    vl_salario         DECIMAL(8, 2) NOT NULL COMMENT  'Salário do Professor.',
    PRIMARY KEY (id_professor)
) COMMENT  'Entidade responsável por persistir dados do professor.';


CREATE TABLE telefone (
    id_telefone INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador numérico.',
    id_pessoa   INTEGER NOT NULL,
    nr_ddi      INTEGER(2) DEFAULT 55 COMMENT 'Número DDI.',
    nr_ddd      INTEGER(2) NOT NULL COMMENT 'Numero DDD.',
    nr_telefone INTEGER(9) NOT NULL COMMENT 'Numero telefone.',
    tp_telefone VARCHAR(1) NOT NULL COMMENT 'Descrição do tipo do telefone: C-Comercial, R-Residencial, P-Pessoal.',
    PRIMARY KEY (id_telefone)
);

ALTER TABLE telefone
    ADD CONSTRAINT telefone_un UNIQUE ( nr_ddi,
                                        nr_ddd,
                                        nr_telefone );

CREATE TABLE usuario (
    id_usuario  INTEGER AUTO_INCREMENT NOT NULL COMMENT 'Identificador único numérico sequêncial.',
    nm_usuario  VARCHAR(20) NOT NULL COMMENT 'Para acessar a plataforma, o usuário sempre utilizará um e-mail.',
    ds_senha    VARCHAR(1000) NOT NULL COMMENT 'Senha do usuário. Deverá conter letras, números e caracteres especiais.',
    st_ativo    VARCHAR(1) DEFAULT 'N' COMMENT 'Identifica se o usuário está ativo: S/N' ,
    dt_cadastro DATE NOT NULL COMMENT 'Data de cadastro.',
    PRIMARY KEY (id_usuario)
) COMMENT 'Entidade responsável por persistir dados do administrador da plataforma.';

ALTER TABLE usuario
    ADD CHECK ( st_ativo IN ( 'N', 'S' ) );


ALTER TABLE administrador
    ADD CONSTRAINT administrador_pessoa_fk FOREIGN KEY ( id_administrador )
        REFERENCES pessoa ( id_pessoa );

ALTER TABLE aluno
    ADD CONSTRAINT aluno_escolaridade_fk FOREIGN KEY ( id_escolaridade )
        REFERENCES escolaridade ( id_escolaridade );

ALTER TABLE aluno
    ADD CONSTRAINT aluno_pessoa_fk FOREIGN KEY ( id_aluno )
        REFERENCES pessoa ( id_pessoa );

ALTER TABLE aula
    ADD CONSTRAINT aula_modulo_fk FOREIGN KEY ( id_modulo )
        REFERENCES modulo ( id_modulo );

ALTER TABLE avaliacao
    ADD CONSTRAINT avaliacao_aluno_fk FOREIGN KEY ( id_aluno )
        REFERENCES aluno ( id_aluno );
	

ALTER TABLE avaliacao
    ADD CONSTRAINT avaliacao_aula_fk FOREIGN KEY ( id_aula )
        REFERENCES aula ( id_aula );

ALTER TABLE comentario
    ADD CONSTRAINT comentario_administrador_fk FOREIGN KEY ( id_administrador )
        REFERENCES administrador ( id_administrador );

ALTER TABLE comentario
    ADD CONSTRAINT comentario_aluno_fk FOREIGN KEY ( id_aluno )
        REFERENCES aluno ( id_aluno );

ALTER TABLE comentario
    ADD CONSTRAINT comentario_aula_fk FOREIGN KEY ( id_aula )
        REFERENCES aula ( id_aula );

ALTER TABLE comentario
    ADD CONSTRAINT comentario_comentario_fk FOREIGN KEY ( id_comentario_filho )
        REFERENCES comentario ( id_comentario );

ALTER TABLE comentario
    ADD CONSTRAINT comentario_professor_fk FOREIGN KEY ( id_professor )
        REFERENCES professor ( id_professor );

ALTER TABLE curso
    ADD CONSTRAINT curso_categoria_fk FOREIGN KEY ( id_categoria )
        REFERENCES categoria ( id_categoria );

ALTER TABLE detalhe_transacao_erro
    ADD CONSTRAINT detalhe_transacao_erro_fk FOREIGN KEY ( id_matricula )
        REFERENCES matricula ( id_matricula );

ALTER TABLE endereco
    ADD CONSTRAINT endereco_aluno_fk FOREIGN KEY ( id_aluno )
        REFERENCES aluno ( id_aluno );

ALTER TABLE endereco
    ADD CONSTRAINT endereco_cidade_fk FOREIGN KEY ( id_cidade )
        REFERENCES cidade ( id_cidade );

ALTER TABLE evolucao_aulas
    ADD CONSTRAINT evolucao_aulas_aluno_fk FOREIGN KEY ( id_aluno )
        REFERENCES aluno ( id_aluno );

ALTER TABLE evolucao_aulas
    ADD CONSTRAINT evolucao_aulas_aula_fk FOREIGN KEY ( id_aula )
        REFERENCES aula ( id_aula );

ALTER TABLE matricula
    ADD CONSTRAINT matricula_aluno_fk FOREIGN KEY ( id_aluno )
        REFERENCES aluno ( id_aluno );

ALTER TABLE matricula
    ADD CONSTRAINT matricula_curso_fk FOREIGN KEY ( id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE modulo
    ADD CONSTRAINT modulo_curso_fk FOREIGN KEY ( id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE pessoa
    ADD CONSTRAINT pessoa_usuario_fk FOREIGN KEY ( id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE professor
    ADD CONSTRAINT professor_pessoa_fk FOREIGN KEY ( id_professor )
        REFERENCES pessoa ( id_pessoa );

ALTER TABLE telefone
    ADD CONSTRAINT telefone_pessoa_fk FOREIGN KEY ( id_pessoa )
        REFERENCES pessoa ( id_pessoa );

