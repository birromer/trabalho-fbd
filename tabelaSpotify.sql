-- kdlftgiv@sharklasers.com cacatua
create table PLANO
(
    codplano char(15) not null primary key,
    usuario char(15) not null unique,
    tipoPlano char(1) not null,
    endereco varchar(50),
    cpf integer(11) unique,
    vinculoIE date,
    foreign key (tipoPlano) references PRECO_PLANO
        on update cascade,
    foreign key(usuario) references USUARIO
        on delete cascade
        on update cascade
);

create table PRECO_PLANO
(
    tipoPlano char(1) not null primary key,
    preco numeric(5) not null
);

create table FATURA
(
    codfat char(15) not null,
    codplano char(15),
    dataVencimento date not null,
    valorFatura numeric(5) not null,
    foreign key (codplano) references PLANO
        on delete set null
        on update cascade,
    primary key(codplano, dataVencimento);
);

create table PLANO_FAMILIAR
(
    codplano char(15) not null,
    familiar1 char(15),
    familiar2 char(15),
    familiar3 char(15),
    familiar4 char(15),
    familiar5 char(15),
    foreign key (codplano) references PLANO
        on delete cascade
        on update cascade,
    foreign key (familiar1) references USUARIO
        on delete set null
        on update cascade,
    foreign key (familiar2) references USUARIO
        on delete set null
        on update cascade,
    foreign key (familiar3) references USUARIO
        on delete set null
        on update cascade,
    foreign key (familiar4) references USUARIO
        on delete set null
        on update cascade,
    foreign key (familiar5) references USUARIO
        on delete set null
        on update cascade,
);

create table USUARIO
(
    codu varchar(15) not null primary key,
    email varchar(30) not null unique,
    nome varchar(50) not null,
    genero char(1) not null check (genero in ('f','m','n'))
    premium char(15),
    codplano char(15),
    foreign key (codplano) references PLANO
        on update cascade
        on delete set null
);

create table ARTISTA
(
    codart char(15) not null primary key,
    nome varchar(50) not null,
    ouvintesMensais integer not null default 0,
    artInfo varchar(500)
);

create table GENERO_ARTISTA
(
    codart char(15) not null,
    genero char(20) not null,
    primary key(codart, genero),
    foreign key (codart) references ARTISTA on delete cascade
);

create table ALBUM
(
    codalb char(15) not null primary key,
    anoLancamento date not null,
    nome varchar(30) not null,
    codart char(15) not null,
    foreign key (codart) references ARTISTA on delete cascade
);

create table MUSICA
(
    codm char(15) not null primary key,
    titulo varchar(30) not null,
    nroOuvidas integer not null default 0,
    duracao char(6) not null,
    creditos varchar(100),
    codalb char(15) not null,
    foreign key(codalb) references ALBUM on delete cascade
);

create table PLAYLIST
(
    codp char(15) primary key,
    nome varchar(100) not null,

    descricao varchar(300)
);

create table PLAYLIST_CONTEUDO
(
    codm char(15) not null,
    codp char(15) not null,
    primary key (codm, codp),
    foreign key(codm) references MUSICA
        on delete cascade,
    foreign key(codp) references PLAYLIST
        on delete cascade
);

create table PLAYLISTS_PUBLICAS_U
(
    codu varchar(15) not null,
    codp char(15) not null,
    primary key (codm, codp),
    foreign key(codu) references USUARIO
        on delete cascade,
    foreign key(codp) references PLAYLIST
        on delete cascade
);

create table BIBLIOTECA
(
    codm char(15) not null,
    codu varchar(30) not null,
    primary key (codm, codu),
    foreign key(codm) references MUSICA on delete set null,
    foreign key(codu) references USUARIO on delete cascade on update cascade
);

create table PROGRAMA
(
    codprog char(15) not null primary key,
    nome varchar(30) not null,
    nomeDono varchar(30) not null
);

create table EPISODIO
(
    codep char(15) not null primary key,
    titulo varchar(40) not null,
    dataPostagem date not null,
    duracao char(6) not null,
    codprog char(15) not null,
    foreign key(codprog) references PROGRAMA on delete cascade
);

create table PODCAST
(
    codep char(15) not null primary key,
    descricao varchar(100),
    foreign key(codep) references EPISODIO on delete cascade
);

create table VIDEO
(
    codep char(15) not null primary key,
    foreign key(codep) references EPISODIO on delete cascade
);

create table CATEGORIA
(
    codcat char(15) primary key,
    nome varchar(20) not null
);

create table CATEGORIA_CONTEUDO
(
    codcat char(15),
    codp char(15),
    primary key (codcat, codp),
    foreign key(codcat) references CATEGORIA on delete cascade,
    foreign key (codp) references PLAYLIST on delete cascade
);

create table CONCERTO
(
    codcon char(15) not null,
    dataC date not null,
    localC varchar(25) not null,
    codart char(15) not null,
    primary key (codcon, codart),
    foreign key (codart) references ARTISTA on delete cascade
);

create table PARTICIPACOES
(
    codart char(15) not null,
    codalb char(15) not null,
    primary key(codart, codalb),
    foreign key (codart) references ARTISTA
        on delete cascade,
    foreign key (codalb) references ALBUM
        on delete cascade
        on update cascade
)
