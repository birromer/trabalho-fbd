insert into USUARIO
values ("einstein", "sansao@arfs.nz", "albertencio de sa", "m");
insert into USUARIO
values ("amoresp", "lupedelupe@arfs.nz", "lara de lara", "f");
insert into USUARIO
values ("portuga", "amoreuvou@arfs.nz", "camoes", "n");
insert into USUARIO
values ("naomemataram", "liberte@gmail.com", "joana da arca", "f");
insert into USUARIO
values ("robson", "alrot@hotail.com", "alfredo roberto", "m");
insert into USUARIO
values ("fonfon", "bibi@outlook.com", "buss", "m");
insert into USUARIO
values ("microphone", "comun@mounteerie.org", "phil elverum", "m");
insert into USUARIO
values ("soueu", "carlos@gmail.com", "carla", "f");
insert into USUARIO
values ("carrier", "frodoiluvu@yahoo.com", "sam of mas", "n");
insert into USUARIO
values ("usuario", "cica@terra.com.br", "benta", "f");

create trigger atualizaPlanoUsuario
after insert on PLANO
referencing new row as N
for each row
update on USUARIO set codplano = N.codplano where codu = N.u;

insert into PLANO
values ("est83", "einstein", "barao do mar, 51, Porto Alegre, Rio Grande do Sul, Brazil", 11311311313, "e", 2020-02-10);
insert into PLANO
values("fam114", "portuga", "abacate, 1004, Porto, Portugal", 45245245252, "f", null);
 insert into PLANO
values("pre6", "", "", "", "", "");
insert into PLANO
values("pre8", "", "", "", "", "");
insert into PLANO
values("pre3", "", "", "", "", "");
insert into PLANO
values("est3", "", "", "", "", "");
insert into PLANO
values("pre777", "", "", "", "", "");
insert into PLANO
values("pre2005", "", "", "", "", "");
insert into PLANO
values("pre1999", "", "", "", "", "");
insert into PLANO
values("est22", "", "", "", "", "");
insert into PLANO
values("pre5", "", "", "", "", "");


insert into ASSINATURA
values("", "", "");


insert into PRECO_PLANO
values("e", 8.50);
insert into PRECO_PLANO
values("f", 26.90);
insert into PRECO_PLANO
values("p", 16.90);


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
values("art006", "Irmão Victor", 1809, "");
insert into ARTISTA
values("art007", "Death Cab For Cutie", 2874554, "Combining sensitive songwriting, memorable melodies, and the rich, wistful vocal tone of its leader Ben Gibbard, Seattle's Death Cab for Cutie quickly rose from a low-key solo project to become one of the definitive indie bands of the 2000s and 2010s. Guitarist/keyboardists Dave Depper and Zac Rae joined the group to tour in support of the album, and became official members for the recording of Thank You for Today. Released in August 2018, it welcomed Costey back as producer. Thank You for Today debuted at 13 on the Billboard Top 200 upon its release. ~ Andrew Leahey & Marcy Donelson, Rovi");
insert into ARTISTA
values("art008", "Neutral Milk Hotel", 804689, "The self-described 'fuzz-folk' project Neutral Milk Hotel was one of the primary outgrowths of the Elephant 6 Recording Company collective, a coterie of like-minded lo-fi indie groups -- including the Apples in Stereo, the Olivia Tremor Control, and Secret Square -- who shared musicians, ideas, and sensibilities. After a series of singles and privately released cassettes, including Invent Yourself a Shortcake, Beauty, and Hype City, Mangum traveled back to Denver to record the critically acclaimed 1996 album On Avery Island on Schneider's four-track machine; in the the spring of 1997 he again returned to Colorado to begin work on the follow-up, the brilliant In the Aeroplane Over the Sea. ~ Jason Ankeny, Rovi");
insert into ARTISTA
values("art009", "Fred Squire", 0, "");
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