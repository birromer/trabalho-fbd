insert into USUARIO(codu,email,nome,genero,premium)
    values ('einstein', 'sansao@arfs.nz', 'Albertencio de Sa', 'm','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('amoresp', 'lupedelupe@arfs.nz', 'Lara de Lara', 'f','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('portuga', 'amoreuvou@arfs.nz', 'Camoes', 'n','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('naomemataram', 'liberte@gmail.com', 'Joana da Arca', 'f','p'); --vai ser casado com portuga entao n tem plano pq eh familia
insert into USUARIO(codu,email,nome,genero,premium)
    values ('robson', 'alrot@hotail.com', 'Alfredo Roberto', 'm','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('fonfon', 'bibi@outlook.com', 'Buss', 'm','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('microphones', 'comun@mounteerie.org', 'Phil Elverum', 'm','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('soueu', 'carlos@gmail.com', 'Carla', 'f','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('carrier', 'frodoiluvu@yahoo.com', 'Sam of Mas', 'n','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('usuario', 'cica@terra.com.br', 'Benta', 'f','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('presidenta', 'didilma@brasil.br', 'Dilma Vana', 'f','p');
insert into USUARIO(codu,email,nome,genero,premium)
    values ('casarao', 'jeijei@gmail.com', 'Joan', 'n','p');

insert into PRECO_PLANO(tipoPlano,preco)
    values ('e', 8.50);
insert into PRECO_PLANO(tipoPlano,preco)
    values ('f', 26.90);
insert into PRECO_PLANO(tipoPlano,preco)
    values ('p', 16.90);

insert into PLANO(codplano,tipoPlano,usuario,endereco,cpf,vinculoIE)
    values ('p83', 'e', 'einstein', 'barao do mar, 51, Porto Alegre, Rio Grande do Sul, Brazil', '11311311313', '2020-02-10');
insert into PLANO(codplano,tipoPlano,usuario,endereco,cpf,familiar1)
    values('p14', 'f', 'portuga', 'abacate, 1004, Porto, Portugal', '45245245252', 'naomemataram');
 insert into PLANO(codplano,tipoPlano,usuario)
     values('p6', 'p', 'amoresp');
insert into PLANO(codplano,tipoPlano,usuario)
    values('p8', 'p', 'robson');
insert into PLANO(codplano,tipoPlano,usuario)
    values('p3', 'p', 'fonfon');
insert into PLANO(codplano,tipoPlano,usuario,endereco,cpf,vinculoIE)
    values('p11', 'e', 'soueu', 'capivara, 999, Curitiba, Parana, Brazil', '44477799933', '2018-12-10');
insert into PLANO(codplano,tipoPlano,usuario)
    values('p777', 'p', 'carrier');
insert into PLANO(codplano,tipoPlano,usuario)
    values('p2005', 'p', 'usuario');
insert into PLANO(codplano,tipoPlano,usuario,endereco,cpf)
    values('p1', 'f', 'microphones', 'Kansas, 2, Washington, DC, USA', '12345678913');
insert into PLANO(codplano,tipoPlano,usuario,endereco,cpf,vinculoIE)
    values('p13', 'e', 'presidenta', 'Goethe, 76, Porto Alegre, Rio Grande do Sul, Brazil', '13131313131', '2050-12-31');
insert into PLANO(codplano,tipoPlano,usuario)
    values('p5', 'p', 'casarao');

insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('1kk7sa63sa', 'einstein', '2018-03-10', 8.50);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('ddg3228sad', 'einstein', '2018-02-10', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('8aa27das1', 'einstein', '2018-01-10', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('9871jnas9', 'portuga', '2018-03-22', 26.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('786fdkjf', 'portuga', '2018-02-22', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('lu2778n', 'naomemataram', '2018-02-16', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('dsaj278', 'presidenta', '2017-10-30', 8.50);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('dkas1973', 'soueu', '2018-03-08', 8.50);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('djal8bj', 'usuario', '2018-02-06', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('sajk87b', 'microphones', '2018-02-10', 16.90);
insert into FATURA(codfat,codUsuario,dataVencimento,valorFatura)
    values('asjkd87jbk', 'microphones', '2015-10-10', 26.90);


insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art001', 'My Chemical Romance', 5526669, 'With their emo-punk songwriting, theatrical vocals, and neo-goth appearance, My Chemical Romance rose from the East Coast underground to the forefront of modern rock during the early 2000s. The band"s final release was a series of five 7 singles entitled Conventional Weapons, released between October 2012 and February 2013, which collected the unreleased songs they had recorded during the sessions for Danger Days. Shortly thereafter, they announced they were disbanding, on March 22, 2013. Almost exactly a year later, they announced the release of a posthumous best-of compilation entitled May Death Never Stop You: The Greatest Hits 2001–2013, which Way described as their epitaph. It featured songs from all four of their studio albums, as well as three demos and their final finished studio track, "Fake Your Death." Two years later -- a time span that also saw the release of Hesitant Alien, Gerard Way"s first solo album -- My Chemical Romance celebrated the tenth anniversary of The Black Parade with the deluxe reissue The Black Parade/Living with Ghosts, which contained a second disc of demos and live tracks. ~ Andrew Leahey & Alex Henderson, Rovi');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art002', 'Modest Mouse', 22151434, 'Modest Mouse was formed in 1993 in Issaquah, Washington. and over the last decade has become the indie rock standard; one of few bands capable of treading the narrow path where massive popularity is possible without sacrificing longtime fans. Modest Mouse released We Were Dead Before The Ship Even Sank, on March 20, 2007 and immediately entered the Billboard Top 200 chart at #1. Most recently the band released their latest record, Strangers to Ourselves in March, 2015, which debuted at #3 on the Billboard 200, and at #1 on the Rock, Alternative, Vinyl, and Internet charts the week it was released.');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art003', 'ABBA', 8151563, 'The most commercially successful pop group of the 1970s, the origins of the Swedish superstars ABBA dated back to 1966, when keyboardist and vocalist Benny Andersson, a onetime member of the popular beat outfit the Hep Stars, first teamed with guitarist and vocalist Bjorn Ulvaeus, the leader of the folk-rock unit the Hootenanny Singers. Although all of the group"s members soon embarked on new projects -- both Lyngstad and Faltskog issued solo LPs, while Andersson and Ulvaeus collaborated with Tim Rice on the musical Chess -- none proved as successful as the group"s earlier work, largely because throughout much of the world, especially Europe and Australia, the ABBA phenomenon never went away.');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art004', 'Mount Eerie', 151169, 'As Mount Eerie, Washington state songwriter/multi-instrumentalist/producer Phil Elverum expands on the searching and deeply personal feel of his work with the Microphones. That year, Elverum and his wife, musician/illustrator Geneviève Castrée of Woelv and Ô Paon, discovered that Castrée had stage-four pancreatic cancer after giving birth to their daughter. Castrée died in July 2016, and two months later, Elverum began writing and recording songs in her work space with her instruments. The results were 2017"s A Crow Looked at Me, a sparse, cathartic set inspired by his time with Castrée as well as her death.');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art005', 'Muse', 8884109, 'Boasting eight acclaimed albums, 20 million sales & the most dazzling shows on earth, Muse are a triumph of millennial rock innovation & ambition. 2018’s Simulation Theory examines the brighter side of technology with a world tour to follow.');
insert into ARTISTA(codart,nome,ouvintesMensais)
    values('art006', 'Irmão Victor', 1809);
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art007', 'Death Cab For Cutie', 2874554, 'Combining sensitive songwriting, memorable melodies, and the rich, wistful vocal tone of its leader Ben Gibbard, Seattle"s Death Cab for Cutie quickly rose from a low-key solo project to become one of the definitive indie bands of the 2000s and 2010s. Guitarist/keyboardists Dave Depper and Zac Rae joined the group to tour in support of the album, and became official members for the recording of Thank You for Today. Released in August 2018, it welcomed Costey back as producer. Thank You for Today debuted at 13 on the Billboard Top 200 upon its release. ~ Andrew Leahey & Marcy Donelson, Rovi');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art008', 'Neutral Milk Hotel', 804689, 'The self-described "fuzz-folk" project Neutral Milk Hotel was one of the primary outgrowths of the Elephant 6 Recording Company collective, a coterie of like-minded lo-fi indie groups -- including the Apples in Stereo, the Olivia Tremor Control, and Secret Square -- who shared musicians, ideas, and sensibilities. After a series of singles and privately released cassettes, including Invent Yourself a Shortcake, Beauty, and Hype City, Mangum traveled back to Denver to record the critically acclaimed 1996 album On Avery Island on Schneider"s four-track machine; in the the spring of 1997 he again returned to Colorado to begin work on the follow-up, the brilliant In the Aeroplane Over the Sea. ~ Jason Ankeny, Rovi');
insert into ARTISTA(codart,nome)
    values('art009', 'Fred Squire');
insert into ARTISTA(codart,nome,ouvintesMensais,artInfo)
    values('art0010', 'Neil Young', 3710742, 'After Neil Young left the California folk-rock band Buffalo Springfield in 1968, he slowly established himself as one of the most influential and idiosyncratic singer/songwriters of his generation. Young continued his burst of activity in 2017 with the release of "Children of Destiny." It was the first single from The Visitor, an album recorded with Promise of the Real that appeared in December 2017. ~ Stephen Thomas Erlewine, Rovi');

insert into GENERO_ARTISTA(codart,genero)
    values('art001','emo');
insert into GENERO_ARTISTA(codart,genero)
    values('art001','goth');
insert into GENERO_ARTISTA(codart,genero)
    values('art002','punk');
insert into GENERO_ARTISTA(codart,genero)
    values('art003','pop');
insert into GENERO_ARTISTA(codart,genero)
    values('art004','experimental');
insert into GENERO_ARTISTA(codart,genero)
    values('art005','modern rock');
insert into GENERO_ARTISTA(codart,genero)
    values('art006','psicodelico');
insert into GENERO_ARTISTA(codart,genero)
    values('art007','indie');
insert into GENERO_ARTISTA(codart,genero)
    values('art008','punk');
insert into GENERO_ARTISTA(codart,genero)
    values('art008','folk');
insert into GENERO_ARTISTA(codart,genero)
    values('art009','indie');
insert into GENERO_ARTISTA(codart,genero)
    values('art0010','rock');
insert into GENERO_ARTISTA(codart,genero)
    values('art007', 'rock');
insert into GENERO_ARTISTA(codart,genero)
    values('art006','experimental');
insert into GENERO_ARTISTA(codart,genero)
    values('art006','indie');
insert into GENERO_ARTISTA(codart,genero)
    values('art004','psicodelico');
insert into GENERO_ARTISTA(codart,genero)
    values('art007','emo');
insert into GENERO_ARTISTA(codart,genero)
    values('art001','rock');
insert into GENERO_ARTISTA(codart,genero)
    values('art007','pop');


insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb1', 2014, 'May Death Never Stop You','art001');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb2',2007,'We Were Dead Before The Ship Even Sank','art002');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb3',1976,'Arrival','art003');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb4',2017,'A Crow Looked At Me','art004');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb10',2004,'Dawn','art004');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb5',2006,'Black Holes And Revelations','art005');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb6',2016,'Passos Simples para Transformar Gelatina em um Monstro','art006');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb7',2005,'Plans','art007');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb11',2003,'Translaticism','art007');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb8',1998,'In the Aeroplane Over the Sea','art008');
insert into ALBUM(codalb,anoLancamento,nome,codart)
    values('alb9',2003,'Be the Rain','art0010');

insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m1','The Kids From Yesterday',10947306,326,'My Chemical Romance', 'Gerard Way, Iero, Mikey Way, Toro','My Chemical Romance, Rob Cavallo', 'alb1');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m2','My Love, My Life',3899337,231,'ABBA','Benny Andersson, Björn Ulvaeus, Stig Anderson','Benny Andersson, Björn Ulvaeus','alb3');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m3','Spitting Venom',4486294,507,'Modest Mouse','Eric Judy, Isaac Brock, Jeremiah Plummer, Johnny Marr, Tom Peloso, Dennis Herring', 'Dennis Herring','alb2');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,codalb)
    values('m4','Great Ghosts',85890,194,'Mount Eerie','alb10');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,codalb)
    values('m5','Real Death',2524339,148,'Mount Eerie','alb4');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,codalb)
    values('m6','Supermassive Black Hole',121769484,212,'Muse', 'Matthew Bellamy','alb5');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m7','I Will Follow You Into The Dark',130549814,189,'Death Cab For Cutie','Benjamin Gibbard','Christopher Walla','alb7');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,codalb)
    values('m8','Expo 86',4307850,251,'Death Cab For Cutie','alb11');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m9','Someday You Will be Loved',7508987,191,'Death Cab For Cutie','Benjamin Gibbard','Christopher Walla','alb7');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,codalb)
    values('m10','Vamos Dar Uma Volta',19105,216,'Irmão Victor','alb6');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,codalb)
    values('m11','Holland, 1945', 16221658, 193, 'Neutral Milk Hotel', 'Jeff Mangum','alb8');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,writtenBy,producedBy,codalb)
    values('m12','Be the Rain',40287,250,'Neil Young', 'Neil Young', 'LA Johnson, Neil Young', 'alb9');
insert into MUSICA(codm,titulo,nroOuvidas,duracao,performedBy,codalb)
    values('m13','Assitindo "A vaca e o Frango" Com a Salete',4713,204,'Irmão Victor','alb6');

insert into PLAYLIST(codp,nome,descricao)
    values('play1','Cantando com Disney','Cante e divirta-se com as músicas da Disney.');
insert into PLAYLIST(codp,nome,descricao)
    values('play2','dirigindo meu carro versão musica triste do Naruto','fururu');
insert into PLAYLIST(codp,nome,descricao)
    values('play3','All Out 00s','Essencial tracks from the decade that catapulted eletronic music, hip hop and indie rock into the mainstream.');
insert into PLAYLIST(codp,nome)
    values('play4','zzz');
insert into PLAYLIST(codp,nome,descricao)
    values('play5','pro Célia poslouchat','tak neposílám tisíc oddělených alb');
insert into PLAYLIST(codp,nome,descricao)
    values('play6','trst','adições questionáveis');
insert into PLAYLIST(codp,nome,descricao)
    values('play7','peachy','no filme da minha vida devia ta tocando isso aqui');
insert into PLAYLIST(codp,nome,descricao)
    values('play8','MpaG','bota boa essa playlist');
insert into PLAYLIST(codp,nome)
    values('play9','Sincretismo');
insert into PLAYLIST(codp,nome)
    values('play10','B4D');

insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m2','play2');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m9','play2');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m1','play2');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m11','play6');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m6', 'play3');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m13','play4');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m10','play4');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m12','play5');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m12','play6');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m7','play7');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m5','play8');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m5','play9');
insert into PLAYLIST_CONTEUDO(codm,codp)
    values('m1','play10');

insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('einstein','play2');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('einstein','play3');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('amoresp','play4');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('amoresp','play1');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('portuga','play5');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('naomemataram','play6');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('naomemataram','play7');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('fonfon','play8');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('carrier','play9');
insert into PLAYLISTS_PUBLICAS_U(codu,codp)
    values('carrier','play10');


insert into BIBLIOTECA(codu,codm)
values('carrier','m1');
insert into BIBLIOTECA(codu,codm)
values('carrier','m2');
insert into BIBLIOTECA(codu,codm)
values('carrier','m3');
insert into BIBLIOTECA(codu,codm)
values('soueu','m1');
insert into BIBLIOTECA(codu,codm)
values('soueu','m10');
insert into BIBLIOTECA(codu,codm)
values('presidenta','m4');
insert into BIBLIOTECA(codu,codm)
values('microphones','m5');
insert into BIBLIOTECA(codu,codm)
values('microphones','m6');
insert into BIBLIOTECA(codu,codm)
values('robson','m7');
insert into BIBLIOTECA(codu,codm)
values('robson','m8');
insert into BIBLIOTECA(codu,codm)
values('robson','m2');
insert into BIBLIOTECA(codu,codm)
values('naomemataram','m9');
insert into BIBLIOTECA(codu,codm)
values('portuga','m10');
insert into BIBLIOTECA(codu,codm)
values('fonfon','m3');
insert into BIBLIOTECA(codu,codm)
values('naomemataram','m6');


insert into CATEGORIA(codcat, nome)
    values ('cat1', 'summer eletro hits');
insert into CATEGORIA(codcat, nome)
    values ('cat2', 'brasuca');
insert into CATEGORIA(codcat, nome)
    values ('cat3', 'funk');
insert into CATEGORIA(codcat, nome)
    values ('cat4', 'chuvoso');
insert into CATEGORIA(codcat, nome)
    values ('cat5', 'medieval');
insert into CATEGORIA(codcat, nome)
    values ('cat6', 'grave');
insert into CATEGORIA(codcat, nome)
    values ('cat7', 'pra bater o pé');
insert into CATEGORIA(codcat, nome)
    values ('cat8', 'quente');
insert into CATEGORIA(codcat, nome)
    values ('cat9', 'trilha');
insert into CATEGORIA(codcat, nome)
    values ('cat10', 'anos 2000');


insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat10', 'play1');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat4', 'play2');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat9', 'play2');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat10', 'play3');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat4', 'play4');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat4', 'play5');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat4', 'play7');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat7', 'play10');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat5', 'play9');
insert into CATEGORIA_CONTEUDO(codcat, codp)
    values ('cat2', 'play8');


insert into CONCERTO(codcon, dataC, localC)
    values ('con1', '2017-05-03', 'Saba Atlântida, Atlântida');
insert into CONCERTO(codcon, dataC, localC)
    values ('con2', '2016-05-03', 'Citibank, São Paulo');
insert into CONCERTO(codcon, dataC, localC)
    values ('con3', '2017-05-03', 'Agulha, Porto Alegre');
insert into CONCERTO(codcon, dataC, localC)
    values ('con4', '2018-05-03', 'Parramatta Park, Sydney');
insert into CONCERTO(codcon, dataC, localC)
    values ('con5', '2019-05-03', 'Opinião, Porto Alegre');
insert into CONCERTO(codcon, dataC, localC)
    values ('con6', '2017-05-03', 'Hollywood Palladium, Hollywood');
insert into CONCERTO(codcon, dataC, localC)
    values ('con7', '2018-05-03', 'The joint at Hard Hock Las Vegas, Las Vegas');
insert into CONCERTO(codcon, dataC, localC)
    values ('con8', '2015-05-03', 'O2 Arena, Prague');
insert into CONCERTO(codcon, dataC, localC)
    values ('con9', '2018-05-03', 'Copenhell, Copenhagen');
insert into CONCERTO(codcon, dataC, localC)
    values ('con10', '2019-05-03', 'Opinião, Porto Alegre');

insert into PROGRAMA(codprog, nome, nomeDono, descricao)
    values ('prog1', 'NerdCast', 'Jovem Nerd', 'O mundo vira piada no Jovem Nerd');
insert into PROGRAMA(codprog, nome, nomeDono, descricao)
    values ('prog2', 'The Adventure Zone', 'Justin Travis, Clint e Griffin McElroy', 'Join The McElroys every other Thursday as they kill a nauseating number of gerblings in... The Adventure Time.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog3', 'Viva Latino: Original Videos', 'New music and exclusive video content, only on Spotify.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog4', 'RapCaviar: The Documentaries', 'RapCaviar artists share the stories behind their hustle, music and vision.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog5', 'Viva Latino: The Performances', 'Latin music"s biggest hits performed exclusively for Viva Latino.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog6', 'Hot Country: Original Videos', 'New music and exclusive video content, only on Spotify.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog7', 'Deconstructing', 'DECONSTRUCTING examines the unexpected ways which music and culture collide.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog8', 'The Line Jump', 'Series charts what happens when the fans waitings in line are pulled and given the chance to hand with their favorite artist.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog9', 'Neural', 'RZO e Sabotage em uma nova parceria: descubra como surgiu "Neural", o primeiro rap do mundo feito a partir da colaboração da inteligência artificial com a inteligência natural humana dos MC"S.');
insert into PROGRAMA(codprog, nome, descricao)
    values ('prog10', 'RapCaviar: FLOW', 'Artists spit an original freestyle over a beat in honor of a tribute, a vision, a dream.');


insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e1', 'Na proxima semana: Maikel Delacalle', '2018-11-28', 60, 'prog3');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e2', 'Morat', '2018-11-05', 235, 'prog3');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e3', 'Jesse & Joy', '2018-11-21', 251, 'prog3');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e4', 'Plato Tipico', '2018-10-05', 132, 'prog3');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e5', 'Radar Latino: Vice Menta', '2018-09-19', 198, 'prog3');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e6', 'Lele Pons Spotify Performance: Celoso', '2018-10-03', 162, 'prog5');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e7', 'Anitta Spotify Performance: Medicina', '2018-11-15', 154, 'prog5');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog)
    values ('e8', 'Luis Fonsi Spotify Performance: Impossible', '2018-11-15', 148, 'prog5');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog, descricao)
    values ('e9', 'NerdCast 648: Robin Hood - O bom ladrão?', '2018-11-30', 2664000, 'prog1', 'Neste NerdCast: Pegue seu arco e flecha e conheça a lenda do Bentinho da Mata, que usa capuz verde amarelado e rouba dos ricos para dar aos pobres.');
insert into EPISODIO (codep, titulo, dataPostagem, duracao, codprog, descricao)
    values ('e10', 'Empreendedor 47 - EMpreendedor de palo', '2018-11-30', 212400 , 'prog1', 'Neste podcast: Vamos bater um papo sobre o que é empreendedorismo de palco.');


insert into PARTICIPACOES(codart,codcon)
    values ('art001','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art002','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art003','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art004','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art005','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art006','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art007','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art008','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art009','con1');
insert into PARTICIPACOES(codart,codcon)
    values ('art0010','con1');

-- drop table participacoes;
-- drop table concerto;
-- drop table categoria_conteudo;
-- drop table categoria;
-- drop table biblioteca;
-- drop table playlist_conteudo;
-- drop table playlists_publicas_u;
-- drop table playlist;
-- drop table genero_artista;
-- drop table musica;
-- drop table album;
-- drop table artista;
-- drop table episodio;
-- drop table programa;
-- drop table plano;
-- drop table fatura;
-- drop table usuario;
-- drop table preco_plano;
