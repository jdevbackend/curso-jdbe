-- Script de criação do Modelo de dados da JDBE para o SGBD PostgreSQL
CREATE TABLE administrador (
    id_administrador NUMERIC NOT NULL,
    vl_salario       NUMERIC(8, 2) NOT NULL
);

COMMENT ON TABLE administrador IS
    'Entidade responsável por persistir dados do Administrador
.';

COMMENT ON COLUMN administrador.vl_salario IS
    'Salário do Professor.';

ALTER TABLE administrador ADD CONSTRAINT administrador_pk PRIMARY KEY ( id_administrador );

CREATE TABLE aluno (
    id_aluno        NUMERIC NOT NULL,
    id_escolaridade NUMERIC NOT NULL
);

COMMENT ON TABLE aluno IS
    'Entidade responsável por persistir dados do aluno.';

ALTER TABLE aluno ADD CONSTRAINT aluno_pk PRIMARY KEY ( id_aluno );

CREATE TABLE aula (
    id_aula      NUMERIC NOT NULL,
    id_modulo    NUMERIC NOT NULL,
    nm_titulo    VARCHAR(30) NOT NULL,
    ds_descricao VARCHAR(2000) NOT NULL,
    ds_url_video VARCHAR(2000) NOT NULL
);

COMMENT ON TABLE aula IS
    'Entidade responsável por armazenar aulas.';

COMMENT ON COLUMN aula.ds_descricao IS
    'Descrição detalhada da aula.';

COMMENT ON COLUMN aula.ds_url_video IS
    'URL da video aula que está armazenado no Bucket S3.';

ALTER TABLE aula ADD CONSTRAINT aula_pk PRIMARY KEY ( id_aula );

CREATE TABLE avaliacao (
    id_aula     NUMERIC NOT NULL,
    id_aluno    NUMERIC NOT NULL,
    qt_estrelas INTEGER NOT NULL
);

ALTER TABLE avaliacao
    ADD CONSTRAINT avaliacao_ck CHECK ( qt_estrelas IN ( 1, 2, 3, 4, 5 ) );

COMMENT ON TABLE avaliacao IS
    'Tabela responsável por armazenar os dados de avaliação das aulas.';

COMMENT ON COLUMN avaliacao.id_aula IS
    'Identificador da aula.';

COMMENT ON COLUMN avaliacao.qt_estrelas IS
    'Quantidade de estrelas de 1 a 5.';

ALTER TABLE avaliacao ADD CONSTRAINT avaliacao_pk PRIMARY KEY ( id_aula,
                                                                id_aluno );

CREATE TABLE categoria (
    id_categoria NUMERIC,
    ds_categoria VARCHAR(30)
);

COMMENT ON COLUMN categoria.id_categoria IS
    'Identificador numérico sequencial.';

COMMENT ON COLUMN categoria.ds_categoria IS 
    'Categorias: Banco da dos, Back-end, Front-End, Arquitetura.';

ALTER TABLE categoria ADD CONSTRAINT categoria_pk PRIMARY KEY ( id_categoria );

CREATE TABLE cidade (
    id_cidade NUMERIC,
    nm_cidade VARCHAR(100) NOT NULL,
    cd_estado VARCHAR(2) NOT NULL
);

COMMENT ON COLUMN cidade.id_cidade IS
    'Identificador numérico cidade.';

COMMENT ON COLUMN cidade.nm_cidade IS
    'Nome da cidade.';

COMMENT ON COLUMN cidade.cd_estado IS
    'Código do Estado.';

ALTER TABLE cidade ADD CONSTRAINT cidade_pk PRIMARY KEY ( id_cidade );

CREATE TABLE comentario (
    id_comentario       NUMERIC,
    id_comentario_filho NUMERIC NOT NULL,
    ds_comentario       VARCHAR(1000) NOT NULL,
    st_status           VARCHAR(1) DEFAULT 'N',
    dt_comentario       DATE NOT NULL,
    id_aula             NUMERIC NOT NULL,
    id_aluno            NUMERIC NOT NULL,
    id_administrador    NUMERIC NOT NULL,
    id_professor        NUMERIC NOT NULL
);

COMMENT ON TABLE comentario IS
    'Tabela responsável por persistir comentários de uma aula.';

COMMENT ON COLUMN comentario.id_comentario IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN comentario.ds_comentario IS
    'Comentário.';

COMMENT ON COLUMN comentario.st_status IS
    'Identifica se o comentário foi aprovado pela área administrativa. S/N';

ALTER TABLE comentario ADD CONSTRAINT comentario_pk PRIMARY KEY ( id_comentario );

CREATE TABLE curso (
    id_curso          NUMERIC NOT NULL,
    id_categoria      NUMERIC NOT NULL,
    nm_titulo         VARCHAR(20),
    nm_curso          VARCHAR(100) NOT NULL,
    ds_descricao      VARCHAR(2300) NOT NULL,
    ds_url_imagem     VARCHAR(2000) NOT NULL,
    vl_preco          NUMERIC(8, 2) NOT NULL,
    nr_periodo_acesso NUMERIC NOT NULL,
    st_vitalicio      VARCHAR(1) NOT NULL
);

ALTER TABLE curso
    ADD CHECK ( st_vitalicio IN ( 'N', 'S' ) );

COMMENT ON TABLE curso IS
    'Tabela responsável por persistir todos os cursos.';

COMMENT ON COLUMN curso.id_curso IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN curso.nm_titulo IS
    'Título do curso.';

COMMENT ON COLUMN curso.nm_curso IS
    'Nome do curso.';

COMMENT ON COLUMN curso.ds_descricao IS
    'Descrição detalhada do curso.';

COMMENT ON COLUMN curso.ds_url_imagem IS
    'URL da imagem de capa do curso. Estará armazenado em um Bucket S3.';

COMMENT ON COLUMN curso.vl_preco IS
    'Valor do curso.';

COMMENT ON COLUMN curso.nr_periodo_acesso IS
    'Período de acesso ao curso.  Será considerado em meses.';

COMMENT ON COLUMN curso.st_vitalicio IS
    'Indica se o curso é vitalício ou não.
S/N';

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE detalhe_transacao_erro (
    id_erro      INTEGER NOT NULL,
    id_matricula INTEGER NOT NULL,
    nr_erro      VARCHAR(5) NOT NULL,
    ds_erro      VARCHAR(2000) NOT NULL,
    dt_erro      DATE NOT NULL
);

COMMENT ON TABLE detalhe_transacao_erro IS
    'Entidade responsável por armazenar as mensagens de erro que podem acontecer com a API de pagamento.';

COMMENT ON COLUMN detalhe_transacao_erro.id_erro IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN detalhe_transacao_erro.nr_erro IS
    'Número do erro na API de pagamento.';

COMMENT ON COLUMN detalhe_transacao_erro.ds_erro IS
    'Descrição do erro devolvida pela API de pagamento.';

COMMENT ON COLUMN detalhe_transacao_erro.dt_erro IS
    'Data em que o erro ocorreu.';

ALTER TABLE detalhe_transacao_erro ADD CONSTRAINT detalhe_transacao_erro_pk PRIMARY KEY ( id_erro );

CREATE TABLE endereco (
    id_endereco   INTEGER NOT NULL,
    id_cidade     NUMERIC NOT NULL,
    id_aluno      NUMERIC NOT NULL,
    nm_logradouro VARCHAR(100) NOT NULL,
    nr_logradouro VARCHAR(5) NOT NULL,
    cd_cep        NUMERIC(8) NOT NULL
);

COMMENT ON TABLE endereco IS
    'Entidade responsável por persistir dados do endereço.';

COMMENT ON COLUMN endereco.nm_logradouro IS
    'Nome do logradouro onde o aluno reside.';

COMMENT ON COLUMN endereco.nr_logradouro IS
    'Número do logradouro.';

COMMENT ON COLUMN endereco.cd_cep IS
    'CEP referente ao logradouro.';

ALTER TABLE endereco ADD CONSTRAINT endereco_pk PRIMARY KEY ( id_endereco );

CREATE TABLE escolaridade (
    id_escolaridade NUMERIC NOT NULL,
    ds_escolaridade VARCHAR(30)
);

COMMENT ON COLUMN escolaridade.id_escolaridade IS
    'Identificador único.';

COMMENT ON COLUMN escolaridade.ds_escolaridade IS
    'Escolaridade do aluno, exemplo: Esino Fundamental, Esino médio, Graduação, Pós-Graduação e etc.';

ALTER TABLE escolaridade ADD CONSTRAINT escolaridade_pk PRIMARY KEY ( id_escolaridade );

CREATE TABLE evolucao_aulas (
    id_aula      NUMERIC NOT NULL,
    id_aluno     NUMERIC NOT NULL,
    st_concluido CHAR(1) DEFAULT 'N' NOT NULL,
    dt_concluido DATE NOT NULL
);

ALTER TABLE evolucao_aulas
    ADD CONSTRAINT evolucao_aula_ck CHECK ( st_concluido IN ( 'N', 'S' ) );

COMMENT ON TABLE evolucao_aulas IS
    'Entidade responsável por armazenar a evolução/progresso do aluno perante as aulas.';

COMMENT ON COLUMN evolucao_aulas.id_aula IS
    'Identificador da aula.';

COMMENT ON COLUMN evolucao_aulas.st_concluido IS
    'Indica se a áula foi concluída/assistida: S/N.';

COMMENT ON COLUMN evolucao_aulas.dt_concluido IS
    'Data de conclusão da aula.';

ALTER TABLE evolucao_aulas ADD CONSTRAINT evolucao_aulas_pk PRIMARY KEY ( id_aula,
                                                                          id_aluno );

CREATE TABLE matricula (
    id_matricula INTEGER NOT NULL,
    id_curso     NUMERIC NOT NULL,
    id_aluno     NUMERIC,
    dt_matricula DATE NOT NULL,
    dt_vigencia  DATE NOT NULL,
    st_status    VARCHAR(1) DEFAULT 'P' NOT NULL
);

ALTER TABLE matricula
    ADD CONSTRAINT matricula_ck CHECK ( st_status IN ( 'A', 'I', 'P' ) );

COMMENT ON TABLE matricula IS
    'Entidade responsável por persistir dados da matrícula. Ela é responsável por descrever quem comprou, quando e qual curso foi adquirido na plataforma, bem como seu status.'
    ;

COMMENT ON COLUMN matricula.id_matricula IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN matricula.dt_matricula IS
    'Data em que a matrícula foi efetuada.';

COMMENT ON COLUMN matricula.dt_vigencia IS
    'Data da vigência da matrícula.';

COMMENT ON COLUMN matricula.st_status IS
    'Status da matricula que pode ser:
P-Pendente pagamento
A-Ativo
I-Inativo por tempo de acesso expirado';

ALTER TABLE matricula ADD CONSTRAINT matricula_pk PRIMARY KEY ( id_matricula );

ALTER TABLE matricula ADD CONSTRAINT matricula_id_curso_un UNIQUE ( id_curso );

CREATE TABLE modulo (
    id_modulo                NUMERIC NOT NULL,
    id_curso                 NUMERIC NOT NULL,
    nm_titulo                VARCHAR(30) NOT NULL,
    ds_descricao             VARCHAR(2000) NOT NULL,
    qt_dias_liberacao_acesso NUMERIC DEFAULT 0 NOT NULL
);

COMMENT ON TABLE modulo IS
    'Tabela responsável por armazenar todos os módulos.';

COMMENT ON COLUMN modulo.id_modulo IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN modulo.nm_titulo IS
    'Título do módulo.';

COMMENT ON COLUMN modulo.ds_descricao IS
    'Descrição do módulo.';

COMMENT ON COLUMN modulo.qt_dias_liberacao_acesso IS
    'Quantidade em dias em que o módulo ficará disponível para acesso.';

ALTER TABLE modulo ADD CONSTRAINT modulo_pk PRIMARY KEY ( id_modulo );

CREATE TABLE pessoa (
    id_pessoa        NUMERIC NOT NULL,
    id_usuario       NUMERIC NOT NULL,
    dt_nascimento    DATE NOT NULL,
    nm_primeiro_nome VARCHAR(100) NOT NULL,
    nm_sobrenome     VARCHAR(100) NOT NULL,
    cd_rg            VARCHAR(10) NOT NULL,
    cd_cpf           NUMERIC(11) NOT NULL
);

COMMENT ON TABLE pessoa IS
    'Entidade responsável por persistir dados do administrador da plataforma.';

COMMENT ON COLUMN pessoa.id_pessoa IS
    'Identificador único.';

COMMENT ON COLUMN pessoa.dt_nascimento IS
    'Data de nascimento.';

COMMENT ON COLUMN pessoa.nm_primeiro_nome IS
    'Nome completo.';

COMMENT ON COLUMN pessoa.nm_sobrenome IS
    'Sobrenome da pessoa.';

COMMENT ON COLUMN pessoa.cd_rg IS
    'Número do RG  da pessoa.';

COMMENT ON COLUMN pessoa.cd_cpf IS
    'Número do CPF da pessoa.';

CREATE UNIQUE INDEX pessoa__idx ON
    pessoa (
        id_usuario
    ASC );

ALTER TABLE pessoa ADD CONSTRAINT pessoa_pk PRIMARY KEY ( id_pessoa );

CREATE TABLE professor (
    id_professor       NUMERIC NOT NULL,
    ds_sobre_instrutor VARCHAR(2000) NOT NULL,
    vl_salario         NUMERIC(8, 2) NOT NULL
);

COMMENT ON TABLE professor IS
    'Entidade responsável por persistir dados do professor.';

COMMENT ON COLUMN professor.ds_sobre_instrutor IS
    'Descrição sobre o instrutor.';

COMMENT ON COLUMN professor.vl_salario IS
    'Salário do Professor.';

ALTER TABLE professor ADD CONSTRAINT professor_pk PRIMARY KEY ( id_professor );

CREATE TABLE telefone (
    id_telefone NUMERIC NOT NULL,
    id_pessoa   NUMERIC NOT NULL,
    nr_ddi      NUMERIC(2) DEFAULT 55,
    nr_ddd      NUMERIC(2) NOT NULL,
    nr_telefone NUMERIC(9) NOT NULL,
    tp_telefone VARCHAR(1) NOT NULL
);

COMMENT ON COLUMN telefone.id_telefone IS
    'Identificador numérico.';

COMMENT ON COLUMN telefone.nr_ddi IS
    'Número DDI.';

COMMENT ON COLUMN telefone.nr_ddd IS
    'Numero DDD.';

COMMENT ON COLUMN telefone.nr_telefone IS
    'Numero telefone.';

COMMENT ON COLUMN telefone.tp_telefone IS
    'Descrição do tipo do telefone: C-Comercial, R-Residencial, P-Pessoal.';

ALTER TABLE telefone ADD CONSTRAINT telefone_pk PRIMARY KEY ( id_telefone );

ALTER TABLE telefone
    ADD CONSTRAINT telefone_un UNIQUE ( nr_ddi,
                                        nr_ddd,
                                        nr_telefone );

CREATE TABLE usuario (
    id_usuario  NUMERIC NOT NULL,
    nm_usuario  VARCHAR(20) NOT NULL,
    ds_senha    VARCHAR(1000) NOT NULL,
    st_ativo    VARCHAR(1) DEFAULT 'N',
    dt_cadastro DATE NOT NULL
);

ALTER TABLE usuario
    ADD CHECK ( st_ativo IN ( 'N', 'S' ) );

COMMENT ON TABLE usuario IS
    'Entidade responsável por persistir dados do administrador da plataforma.';

COMMENT ON COLUMN usuario.id_usuario IS
    'Identificador único numérico sequêncial.';

COMMENT ON COLUMN usuario.nm_usuario IS
    'Para acessar a plataforma, o usuário sempre utilizará um e-mail.';

COMMENT ON COLUMN usuario.ds_senha IS
    'Senha do usuário. Deverá conter letras, números e caracteres especiais.';

COMMENT ON COLUMN usuario.st_ativo IS
    'Identifica se o usuário está ativo: S/N';

COMMENT ON COLUMN usuario.dt_cadastro IS
    'Data de cadastro.';

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

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


CREATE SEQUENCE aula_seq START WITH 1;

CREATE SEQUENCE categoria_seq START WITH 1;

CREATE SEQUENCE cidade_seq START WITH 1;

CREATE SEQUENCE comentario_seq START WITH 1;

CREATE SEQUENCE curso_seq START WITH 1;

CREATE SEQUENCE detalhe_transacao_erro_seq START WITH 1;

CREATE SEQUENCE endereco_seq START WITH 1;

CREATE SEQUENCE escolaridade_seq START WITH 1;

CREATE SEQUENCE matricula_seq START WITH 1;

CREATE SEQUENCE modulo_seq START WITH 1;

CREATE SEQUENCE pessoa_seq START WITH 1;

CREATE SEQUENCE telefone_seq START WITH 1;

CREATE SEQUENCE usuario_seq START WITH 1;
