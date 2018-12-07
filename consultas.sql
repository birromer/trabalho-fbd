-- musicas com pelo menos 2 generos em comum com uma playlist x em que nao estao (subconsulta)
select MUSICA.titulo
from MUSICA join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
where codm not in ( select distinct codm 
		from PLAYLIST natural join PLAYLIST_CONTEUDO
		where PLAYLIST.nome like 'peachy%' ) and genero in ( select distinct genero
						from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
						where PLAYLIST.nome like 'peachy%' )
group by MUSICA.titulo
having count(distinct genero) > 1;


-- musica mais ouvida de um artista x (subconsulta)
select MUSICA.titulo
from MUSICA join ALBUM using (codalb) join ARTISTA using (codart)
where ARTISTA.nome like 'My%' and nroOuvidas = ( select max(nroOuvidas)
					from MUSICA join ALBUM using (codalb) join ARTISTA using (codart)
					where ARTISTA.nome like 'My%' );


-- playlists com todos os artistas e talvez mais alguns da playlist x (not exists)
select distinct nome
from PLAYLIST p
where nome not like 'diri%' and not exists ( select * 
				from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart)
				where PLAYLIST.nome like 'diri%' and codart not in ( select distinct codart
									from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart)
									where PLAYLIST.codp = p.codp )) ;


-- seleciona todos artistas da biblioteca que possuem concerto e exibe o nome, o lugar e data dele
select nome, localC, dataC
from CONCERTO join PARTICIPACOES using (codcon) join ARTISTA using (codart)
where codart in (select codart
		from USUARIO join BIBLIOTECA using (codu) join MUSICA using (codm) join ALBUM using (codalb)
		where USUARIO.codu = 'carrier');


-- todos episodios de X programa salvo pelo usuario Y, ordenados do mais recente para o mais antigo
select titulo
from USUARIO join PROGRAMA_SEGUIDO on (codu = codUsuario) join PROGRAMA using (codprog) JOIN EPISODIO using (codprog)
where PROGRAMA.nome = 'NerdCast' and USUARIO.codu = 'einstein'
order by dataPostagem desc;	


-- usuarios que assinaram o spotify familia por pelo menos uma quatidade x de meses (group by)
select USUARIO.nome
from PLANO join USUARIO on (usuario = codu) join FATURA on (codUsuario = codu)
where tipoPlano = 'f'
group by nome
having count(*) > 1;
