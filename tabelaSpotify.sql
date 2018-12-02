--ftgiv@sharklasers.com cacatua
create table PRECO_PLANO
(
    tipoPlano char(1) not null primary key,
    preco numeric(5) not null
);

create table USUARIO
(
    codu varchar(15) not null primary key,
    email varchar(30) not null unique,
    nome varchar(50) not null,
    genero char(1) not null check (genero in ('f','m','n')),
    premium char
);

create table PLANO
(
    codplano char(15) not null primary key,
    tipoPlano char(1) not null,
    usuario char(15) not null unique,
    endereco varchar(150),
    cpf char(11) unique,
    vinculoIE date,
    familiar1 char(15),
    familiar2 char(15),
    familiar3 char(15),
    familiar4 char(15),
    familiar5 char(15),
    foreign key (tipoPlano) references PRECO_PLANO
        on update cascade,
    foreign key(usuario) references USUARIO
        on delete cascade
        on update cascade,
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
        on update cascade
); 

create table FATURA
(
    codfat char(15) not null,
    codUsuario char(15),
    dataVencimento date not null,
    valorFatura numeric(5) not null,
    foreign key (codUsuario) references USUARIO
        on delete set null
        on update cascade,
    primary key(codUsuario, dataVencimento)
);


create table ARTISTA
(
    codart char(15) not null primary key,
    nome varchar(50) not null,
    ouvintesMensais integer not null default 0,
    artInfo varchar(2000)
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
    anoLancamento integer not null,
    nome varchar(100) not null,
    codart char(15) not null,
    foreign key (codart) references ARTISTA on delete cascade
);

create table MUSICA
(
    codm char(15) not null primary key,
    titulo varchar(100) not null,
    nroOuvidas integer not null default 0,
    duracao char(6) not null,
    performedBy varchar(100),
    writtenBy varchar(100),
    producedBy varchar(100),
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
    primary key (codu, codp),
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
    nome varchar(100) not null,
    nomeDono varchar(100),
    descricao varchar(200) not null
);

create table EPISODIO
(
    codep char(15) not null primary key,
    titulo varchar(200) not null,
    dataPostagem date not null,
    duracao integer not null,
    codprog char(15) not null,
    descricao varchar(500),
    foreign key(codprog) references PROGRAMA on delete cascade
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
    localC varchar(100) not null,
    primary key (codcon)
);


create table PARTICIPACOES
(
    codart char(15),
    codcon char(15),
    primary key(codart, codcon),
    foreign key (codart) references ARTISTA
        on delete set null,
    foreign key (codcon) references CONCERTO
        on delete cascade
        on update cascade
);


