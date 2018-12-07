import psycopg2 as psql

def conecta(host, database, usuario, senha):
    try:
        print("Conectando ao banco de dados")
        conexao = psql.connect(host=host, database=database, user=usuario, password=senha)
        print("Sucesso na conexao.")
        #cria um cursor
        cursor = conexao.cursor()
    except (Exception, psql.DatabaseError) as error:
        print(error)

    return cursor

def sugereMusicaPlaylist(playlist, cursor):
    comando = """
    select MUSICA.titulo
    from MUSICA join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
    where codm not in ( select distinct codm
    		from PLAYLIST natural join PLAYLIST_CONTEUDO
    		where PLAYLIST.nome like '""" + playlist + """' ) and genero in ( select distinct genero
    						from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart) join GENERO_ARTISTA using (codart)
    						where PLAYLIST.nome like '""" + playlist + """' )
    group by MUSICA.titulo
    having count(distinct genero) > 1;
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()
    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def musicaMaisPopular(artista, cursor):
    comando = """
    select MUSICA.titulo
    from MUSICA join ALBUM using (codalb) join ARTISTA using (codart)
    where ARTISTA.nome like '""" + artista + """' and nroOuvidas = ( select max(nroOuvidas)
    					from MUSICA join ALBUM using (codalb) join ARTISTA using (codart)
    					where ARTISTA.nome like '""" + artista + """' );
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()
    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def encontraPlaylistsComMesmosArtista(playlist, cursor):
    comando = """
    select distinct nome
    from PLAYLIST p
    Where nome not like 'diri%' and not exists ( select *
    				from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart)
    				where PLAYLIST.nome like '""" + playlist + """' and codart not in ( select distinct codart
    									from PLAYLIST join PLAYLIST_CONTEUDO using (codp) join MUSICA using (codm) join ALBUM using (codalb) join ARTISTA using (codart)
    									where PLAYLIST.codp = p.codp )) ;
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()
    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def mostraConcertos(usuario, cursor):
    comando = """
    select nome, localC, dataC
    from CONCERTO join PARTICIPACOES using (codcon) join ARTISTA using (codart)
    where codart in (select codart
		from USUARIO join BIBLIOTECA using (codu) join MUSICA using (codm) join ALBUM using (codalb)
		where USUARIO.codu = '""" + usuario + """');
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()
    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def mostraEpisodiosDeProgramaSeguido(usuario, programa, cursor):
    comando = """
    select titulo
    from USUARIO join PROGRAMA_SEGUIDO on (codu = codUsuario) join PROGRAMA using (codprog) JOIN EPISODIO using (codprog)
    where PROGRAMA.nome = '""" + programa + """' and USUARIO.codu = '""" + usuario + """'
    order by dataPostagem desc
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()

    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def selecionaUsuariosPagantesAntigos(cursor):
    comando = """
    select USUARIO.nome
    from PLANO join USUARIO on (usuario = codu) join FATURA on (codUsuario = codu)
    where tipoPlano = 'f'
    group by nome
    having count(*) >= 3;
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()

    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def deletaUsuario(plano):
    comando = """
    delete from PLANO
    where USUARIO = '""" + plano + """';
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()

    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

def exibeUsuarios():
    comando = """
     select *
     from usuario;
     """
    cursor.execute(comando)
    linhas = cursor.fetchall()

    if linhas == None:
        print("Sem resultados")
    else:
        for linha in linhas:
            print(linha)

if __name__ == "__main__":
    cursor = conecta("localhost", "espotefai", "postgres", "")
    usuario = input("Digite o nome do seu usuario: ")

    while True:
        print("""Opcoes:
        1 - Receber sugestoes de musica a partir de playlist;
        2 - Descobrir a musica mais ouvida de um artista;
        3 - Encontrar playlists com os mesmos artista de outra playlist
        4 - Mostra todos os concertos de todos artistas na sua biblioteca
        5 - Veja todos episodios ordenados de um programa que voce segue
        6 - Exiba todos usuarios que tenham plano pago ha mais de 1 ano
        7 - Exibe usuarios e informacoes
        8 - Deleta plano
        9 - Sair do programa.
        Escolha uma opcao: """)
        opcao = input()
        if opcao == "1":
            playlist = input("Digite o nome da playlist: ")
            sugereMusicaPlaylist(playlist, cursor)
        elif opcao == "2":
            artista = input("Digite o nome do artista: ")
            musicaMaisPopular(artista, cursor)
        elif opcao == "3":
            playlist = input("Digite o nome da playlist: ")
            encontraPlaylistsComMesmosArtista(playlist, cursor)
        elif opcao == "4":
            mostraConcertos(usuario, cursor)
        elif opcao == "5":
            programa = input("Digite o nome do programa: ")
            mostraEpisodiosDeProgramaSeguido(usuario, programa, cursor)
        elif opcao == "6":
            selecionaUsuariosPagantesAntigos(cursor)
        elif opcao == "7":
            exibeUsuarios()
        elif opcao == "8":
            plano = input("Digite o plano: ")
            deletaUsuario(plano)
        elif opcao == "9":
            break
        opcao = input("\n\nDigite 's' para encerrar o programa agora.")
        if opcao == "s":
            break
