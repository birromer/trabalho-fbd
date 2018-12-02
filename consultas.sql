-- musicas com pelo menos 2 generos em comum com uma playlist x em que nao estao
select MUSICA.titulo
from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
where codm not in ( select distinct codm 
		from PLAYLIST natural join PLAYLIST_CONTEUDO
		where PLAYLIST.nome = 'zzz' ) and genero in ( select distinct genero
						from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
						where PLAYLIST.nome = 'zzz' )
group by MUSICA.titulo
having count(distinct genero) > 1;

-- musica mais ouvida de um artista x
select MUSICA.titulo
from MUSICA join ALBUM on (codalb) join ARTISTA on (codart)
where ARTISTA.nome = x and nroOuvidas = ( select max(nroOuvidas)
					from MUSICA join ALBUM on (codalb) join ARTISTA on (codart)
					where ARTISTA.nome = x );

-- playlists com todos os generos e talvez mais alguns da playlist x
select distinct ARTISTA.nome
from 
