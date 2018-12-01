insert into USUARIO
    values ("einstein", "sansao@arfs.nz", "Albertencio de Sa", "m");
insert into USUARIO
    values ("amoresp", "lupedelupe@arfs.nz", "Lara de Lara", "f");
insert into USUARIO
    values ("portuga", "amoreuvou@arfs.nz", "Camoes", "n");
insert into USUARIO
    values ("naomemataram", "liberte@gmail.com", "Joana da Arca", "f"); --vai ser casado com portuga entao n tem plano pq eh familia
insert into USUARIO
    values ("robson", "alrot@hotail.com", "Alfredo Roberto", "m");
insert into USUARIO
    values ("fonfon", "bibi@outlook.com", "Buss", "m");
insert into USUARIO
    values ("microphones", "comun@mounteerie.org", "Phil Elverum", "m");
insert into USUARIO
    values ("soueu", "carlos@gmail.com", "Carla", "f");
insert into USUARIO
    values ("carrier", "frodoiluvu@yahoo.com", "Sam of Mas", "n");
insert into USUARIO
    values ("usuario", "cica@terra.com.br", "Benta", "f");
insert into USUARIO
    values ("presidenta", "didilma@brasil.br", "Dilma Vana", "f");
insert into USUARIO
    values ("casarao", "jeijei@gmail.com", "Joan", "n");

create trigger atualizaPlanoUsuario
    after insert on PLANO
    referencing new row as N
    for each row
    update on USUARIO set codplano = N.codplano where codu = N.u;

insert into PRECO_PLANO
    values ("e", 8.50);
insert into PRECO_PLANO
    values ("f", 26.90);
insert into PRECO_PLANO
    values ("p", 16.90);

insert into PLANO
    values ("p83", "e", "einstein", "barao do mar, 51, Porto Alegre, Rio Grande do Sul, Brazil", 11311311313, "2020-02-10");
insert into PLANO
    values("p14", "f", "portuga", "abacate, 1004, Porto, Portugal", 45245245252,  null);
 insert into PLANO
     values("p6", "p", "amoresp", null, null, null);
insert into PLANO
    values("p8", "p", "robson", null, null, null);
insert into PLANO
    values("p3", "p", "fonfon", null, null, null);
insert into PLANO
    values("p11", "e", "soueu", "capivara, 999, Curitiba, Parana, Brazil", "44477799933", "2018-12-10");
insert into PLANO
    values("p777", "p", "carrier", null, null, null);
insert into PLANO
    values("p2005", "p", "usuario", null, null, null);
insert into PLANO
    values("p1", "f", "microphones", "Kansas, 2, Washington, DC, USA", "12345678913", null);
insert into PLANO
    values("p22", "e", "presidenta", "Goethe, 76, Porto Alegre, Rio Grande do Sul, Brazil", "13131313131", 2050-12-31);
insert into PLANO
    values("p5", "p", "casarao", null, null, null);

insert into PLANO_FAMILIAR
    values ("p14", "naommemataram", null, null, null, null);
insert into PLANO_FAMILIAR
    values ("p1", null, null, null, null, null);

insert into FATURA
    values("1kk7sa63sa", "einstein", "2018-03-10", 8.50);
insert into FATURA
    values("ddg3228sad", "einstein", "2018-02-10", 16.90);
insert into FATURA
    values("8aa27das1", "einstein", "2018-01-10", 16.90);
insert into FATURA
    values("9871jnas9", "portuga", "2018-03-22", 26.90);
insert into FATURA
    values("786fdkjf", "portuga", "2018-02-22", 16.90);
insert into FATURA
    values("lu2778n", "naomemataram", "2018-02-16", 16.90);
insert into FATURA
    values("dsaj278", "presidenta", "2017-10-30", 8.50);
insert into FATURA
    values("dkas1973", "soueu", "2018-03-08", 8.50);
insert into FATURA
    values("djal8bj", "usuario", "2018-02-06", 16.90);
insert into FATURA
    values("sajk87b", "microphones", "2018-02-10", 16.90);
insert into FATURA
    values("asjkd87jbk", "microphones", "2015-10-10", 26.90);


insert into ARTISTA
    values("art001", "My Chemical Romance", 5526669, "With their emo-punk songwriting, theatrical vocals, and neo-goth appearance, My Chemical Romance rose from the East Coast underground to the forefront of modern rock during the early 2000s. The band's final release was a series of five 7 singles entitled Conventional Weapons, released between October 2012 and February 2013, which collected the unreleased songs they had recorded during the sessions for Danger Days. Shortly thereafter, they announced they were disbanding, on March 22, 2013. Almost exactly a year later, they announced the release of a posthumous best-of compilation entitled May Death Never Stop You: The Greatest Hits 2001–2013, which Way described as their epitaph. It featured songs from all four of their studio albums, as well as three demos and their final finished studio track, 'Fake Your Death.' Two years later -- a time span that also saw the release of Hesitant Alien, Gerard Way's first solo album -- My Chemical Romance celebrated the tenth anniversary of The Black Parade with the deluxe reissue The Black Parade/Living with Ghosts, which contained a second disc of demos and live tracks. ~ Andrew Leahey & Alex Henderson, Rovi");
insert into ARTISTA
    values("art002", "Modest Mouse", 22151434, "Modest Mouse was formed in 1993 in Issaquah, Washington. and over the last decade has become the indie rock standard; one of few bands capable of treading the narrow path where massive popularity is possible without sacrificing longtime fans. Modest Mouse released We Were Dead Before The Ship Even Sank, on March 20, 2007 and immediately entered the Billboard Top 200 chart at #1. Most recently the band released their latest record, Strangers to Ourselves in March, 2015, which debuted at #3 on the Billboard 200, and at #1 on the Rock, Alternative, Vinyl, and Internet charts the week it was released.");
insert into ARTISTA
    values("art003", "ABBA", 8151563, "The most commercially successful pop group of the 1970s, the origins of the Swedish superstars ABBA dated back to 1966, when keyboardist and vocalist Benny Andersson, a onetime member of the popular beat outfit the Hep Stars, first teamed with guitarist and vocalist Bjorn Ulvaeus, the leader of the folk-rock unit the Hootenanny Singers. Although all of the group's members soon embarked on new projects -- both Lyngstad and Faltskog issued solo LPs, while Andersson and Ulvaeus collaborated with Tim Rice on the musical Chess -- none proved as successful as the group's earlier work, largely because throughout much of the world, especially Europe and Australia, the ABBA phenomenon never went away.");
insert into ARTISTA
    values("art004", "Mount Eerie", 151169, "As Mount Eerie, Washington state songwriter/multi-instrumentalist/producer Phil Elverum expands on the searching and deeply personal feel of his work with the Microphones. That year, Elverum and his wife, musician/illustrator Geneviève Castrée of Woelv and Ô Paon, discovered that Castrée had stage-four pancreatic cancer after giving birth to their daughter. Castrée died in July 2016, and two months later, Elverum began writing and recording songs in her work space with her instruments. The results were 2017's A Crow Looked at Me, a sparse, cathartic set inspired by his time with Castrée as well as her death.");
insert into ARTISTA
    values("art005", "Muse", 8884109, "Boasting eight acclaimed albums, 20 million sales & the most dazzling shows on earth, Muse are a triumph of millennial rock innovation & ambition. 2018’s Simulation Theory examines the brighter side of technology with a world tour to follow.");
insert into ARTISTA
    values("art006", "Irmão Victor", 1809, null);
insert into ARTISTA
    values("art007", "Death Cab For Cutie", 2874554, "Combining sensitive songwriting, memorable melodies, and the rich, wistful vocal tone of its leader Ben Gibbard, Seattle's Death Cab for Cutie quickly rose from a low-key solo project to become one of the definitive indie bands of the 2000s and 2010s. Guitarist/keyboardists Dave Depper and Zac Rae joined the group to tour in support of the album, and became official members for the recording of Thank You for Today. Released in August 2018, it welcomed Costey back as producer. Thank You for Today debuted at 13 on the Billboard Top 200 upon its release. ~ Andrew Leahey & Marcy Donelson, Rovi");
insert into ARTISTA
    values("art008", "Neutral Milk Hotel", 804689, "The self-described 'fuzz-folk' project Neutral Milk Hotel was one of the primary outgrowths of the Elephant 6 Recording Company collective, a coterie of like-minded lo-fi indie groups -- including the Apples in Stereo, the Olivia Tremor Control, and Secret Square -- who shared musicians, ideas, and sensibilities. After a series of singles and privately released cassettes, including Invent Yourself a Shortcake, Beauty, and Hype City, Mangum traveled back to Denver to record the critically acclaimed 1996 album On Avery Island on Schneider's four-track machine; in the the spring of 1997 he again returned to Colorado to begin work on the follow-up, the brilliant In the Aeroplane Over the Sea. ~ Jason Ankeny, Rovi");
insert into ARTISTA
    values("art009", "Fred Squire", 0, null);
insert into ARTISTA
    values("art0010", "Neil Young", 3710742, "After Neil Young left the California folk-rock band Buffalo Springfield in 1968, he slowly established himself as one of the most influential and idiosyncratic singer/songwriters of his generation. Young continued his burst of activity in 2017 with the release of 'Children of Destiny.' It was the first single from The Visitor, an album recorded with Promise of the Real that appeared in December 2017. ~ Stephen Thomas Erlewine, Rovi");

insert into GENERO_ARTISTA
    values("art001","emo");
insert into GENERO_ARTISTA
    values("art001","goth");
insert into GENERO_ARTISTA
    values("art002","punk");
insert into GENERO_ARTISTA
    values("art003","pop");
insert into GENERO_ARTISTA
    values("art004","experimental");
insert into GENERO_ARTISTA
    values("art005","modern rock");
insert into GENERO_ARTISTA
    values("art006","psicodelico");
insert into GENERO_ARTISTA
    values("art007","indie");
insert into GENERO_ARTISTA
    values("art008","punk");
insert into GENERO_ARTISTA
    values("art008","folk");
insert into GENERO_ARTISTA
    values("art009","indie");
insert into GENERO_ARTISTA
    values("art0010","rock");

insert into ALBUM
    values("alb1", 2014, "May Death Never Stop You","art001");
insert into ALBUM
    values("alb2",2007,"We Were Dead Before The Ship Even Sank","art002");
insert into ALBUM
    values("alb3",1976,"Arrival","art003");
insert into ALBUM
    values("alb4",2017,"A Crow Looked At Me","art004");
insert into ALBUM
    values("alb10",2004,"Dawn","art004");
insert into ALBUM
    values("alb5",2006,"Black Holes And Revelations","art005");
insert into ALBUM
    values("alb6",2016,"Passos Simples para Transformar Gelatina em um Monstro","art006");
insert into ALBUM
    values("alb7",2005,"Plans","art007");
insert into ALBUM
    values("alb11",2003,"Translaticism","art007");
insert into ALBUM
    values("alb8",1998,"In the Aeroplane Over the Sea","art008");
insert into ALBUM
    values("alb9",2003,"Be the Rain","art0010");

insert into MUSICA
    values("m1","The Kids From Yesterday",10947306,326,"My Chemical Romance", "Gerard Way, Iero, Mikey Way, Toro","My Chemical Romance, Rob Cavallo", "alb1");
insert into MUSICA
    values("m2","My Love, My Life",3899337,231,"ABBA","Benny Andersson, Björn Ulvaeus, Stig Anderson","Benny Andersson, Björn Ulvaeus","alb3");
insert into MUSICA
    values("m3","Spitting Venom",4486294,507,"Modest Mouse","Eric Judy, Isaac Brock, Jeremiah Plummer, Johnny Marr, Tom Peloso, Dennis Herring", "Dennis Herring","alb2");
insert into MUSICA
    values("m4","Great Ghosts",85890,194,"Mount Eerie",null,null,"alb10");
insert into MUSICA
    values("m5","Real Death",2524339,148,"Mount Eerie",null,null,"alb4");
insert into MUSICA
    values("m6","Supermassive Black Hole",121769484,212,"Muse", "Matthew Bellamy",null,"alb5");
insert into MUSICA
    values("m7","I Will Follow You Into The Dark",130549814,189,"Death Cab For Cutie","Benjamin Gibbard","Christopher Walla","alb7");
insert into MUSICA
    values("m8","Expo '86",4307850,251,"Death Cab For Cutie",null,null,"alb11");
insert into MUSICA
    values("m9","Someday You Will be Loved",7508987,191,"Death Cab For Cutie","Benjamin Gibbard","Christopher Walla","alb7");
insert into MUSICA
    values("m10","Vamos Dar Uma Volta",19105,216,"Irmão Victor",null,null,"alb6");
insert into MUSICA
    values("m11","Holland, 1945", 16221658, 193, "Neutral Milk Hotel", "Jeff Mangum",null,"alb8");
insert into MUSICA
    values("m12","Be the Rain",40287,250,"Neil Young", "Neil Young", "LA Johnson, Neil Young", "alb9");
insert into MUSICA
    values("m13","Assitindo 'A vaca e o Frango' Com a Salete",4713,204,"Irmão Victor",null,null,"alb6");

insert into PLAYLIST
    values("play1","Cantando com Disney","Cante e divirta-se com as músicas da Disney.");
insert into PLAYLIST
    values("play2","dirigindo meu carro versão musica triste do Naruto","fururu");
insert into PLAYLIST
    values("play3","All Out 00s","Essencial tracks from the decade that catapulted eletronic music, hip hop and indie rock into the mainstream.");
insert into PLAYLIST
    values("play4","zzz", null);
insert into PLAYLIST
    values("play5","pro Célia poslouchat","tak neposílám tisíc oddělených alb");
insert into PLAYLIST
    values("play6","trst","adições questionáveis");
insert into PLAYLIST
    values("play7","peachy","no filme da minha vida devia ta tocando isso aqui");
insert into PLAYLIST
    values("play8","MpaG","bota boa essa playlist");
insert into PLAYLIST
    values("play9","Sincretismo", null);
insert into PLAYLIST
    values("play10","B4D", null);

insert into PLAYLIST_CONTEUDO
    values("m2","play2");
insert into PLAYLIST_CONTEUDO
    values("m9","play2");
insert into PLAYLIST_CONTEUDO
    values("m8","play2");
insert into PLAYLIST_CONTEUDO
    values("m11","play6");
insert into PLAYLIST_CONTEUDO
    values("m6", "play3");
insert into PLAYLIST_CONTEUDO
    values("m13","play4");
insert into PLAYLIST_CONTEUDO
    values("m10","play4");
insert into PLAYLIST_CONTEUDO
    values("m12","play5");
insert into PLAYLIST_CONTEUDO
    values("m12","play6");
insert into PLAYLIST_CONTEUDO
    values("m7","play7");
insert into PLAYLIST_CONTEUDO
    values("m5","play8");
insert into PLAYLIST_CONTEUDO
    values("m5","play9");
insert into PLAYLIST_CONTEUDO
    values("m1","play10");

insert into PLAYLISTS_PUBLICAS_U
    values("einstein","play2");
insert into PLAYLISTS_PUBLICAS_U
    values("einstein","play3");
insert into PLAYLISTS_PUBLICAS_U
    values("amoresp","play4");
insert into PLAYLISTS_PUBLICAS_U
    values("amoresp","play1");
insert into PLAYLISTS_PUBLICAS_U
    values("portuga","play5");
insert into PLAYLISTS_PUBLICAS_U
    values("naomemataram","play6");
insert into PLAYLISTS_PUBLICAS_U
    values("naomemataram","play7");
insert into PLAYLISTS_PUBLICAS_U
    values("m5","play8");
insert into PLAYLISTS_PUBLICAS_U
    values("m5","play9");
insert into PLAYLISTS_PUBLICAS_U
    values("m1","play10");


insert into BIBLIOTECA
    values()
