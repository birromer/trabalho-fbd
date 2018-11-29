-- kdlftgiv@sharklasers.com
create table PLANO
(
    codplano char(5) not null primary key,
    endereco varchar(50),
    usuario char(5) not null
);

create table USUARIO
(
    codu varchar(30) not null primary key,
    email varchar(30) not null unique,
    nome varchar(50) not null
    genero char (1) not null check (genero in ('f','m','n'));
);

create table ARTISTA
(
    codart char(5) not null primary key,
    nome varchar(50) not null,
    ouvintesMensais integer not null set default 0,
    artInfo varchar(500)
);

create table GENERO_ARTISTA
(
    codart char(5) not null,
    genero char(20) not null,
    primary key(codart, genero),
    foreign key (codart) references ARTISTA on delete cascade,
);

create table ALBUM
(
    codalb char(5) not null primary key,
    anoLancamento date not null,
    nome varchar(30) not null
    codart char(5) not null,
    foreign key (codart) references ARTISTA on delete cascade 
);

create table MUSICA
(
    codm char(5) not null primary key,
    titulo varchar(30) not null,
    nroOuvidas integer not null default 0,
    duracao char(6) not null,
    creditos varchar(100),
    codalb char(5) not null,
    foreign key codalb references ALBUM on delete cascade
);

create table PLAYLIST
(
    codp char(5) primary key,
    nome varchar(100) not null,
    descricao varchar(300),    
);

create table PLAYLIST_CONTEUDO
(
    codm char(5) not null,
    codp char(5) not null,
    primary key (codm, codp),
    foreign key codm references MUSICA,
    foreign key codp references PLAYLIST,
);

create table BIBLIOTECA
(
    codm char(5) not null,
    codu varchar(30) not null,
    primary key (codm, codu),
    foreign key codm references MUSICA on delete set null,
    foreign key codu references USUARIO on delete cascade on update cascade,
);


create table PODCAST
(
    codep char(5) not null primary key,
    descricao varchar(100),
    foreign key codep references EPISODIO on delete cascade
);

create table VIDEO
(
    codep char(5) not null primary key,
    foreign key codep references EPISODIO on delete cascade
);

create table EPISODIO
(
    codep char(5) not null primary key,
    titulo varchar(40) not null,
    dataPostagem date not null,
    duracao char(6) not null,
    codprog char(5) not null,
    foreign key codprog references PROGRAMA on delete cascade
);


create table PROGRAMA
(
    codprog char(5) not null primary key,
    nome varchar(30) not null,
    nomeDono varchar(30) not null
);

create table CATEGORIA
(
    codcat char(5) primary key;
    nome varchar(20) not null,
);

create table CATEGORIA_CONTEUDO
(
    codcat char(5),
    codp char(5),
    primary key (codcat, codp),
    foreign key codcat references CATEGORIA on delete cascade,
    foreign key codp references PLAYLIST on delete cascade
);

create table CONCERTO
(
    codcon char(5) not null,
    dataC data not null,
    localC local not null,
    codart char(5) not null,
    primary key (codcon, codart),
    foreign key (codart) references ARTISTA on delete cascade
);