SELECT
	COUNT(DISTINCT m.titulo) AS cancoes,
    COUNT(DISTINCT a.artista) AS artistas,
    COUNT(DISTINCT al.album) AS albuns
FROM SpotifyClone.musica m
INNER JOIN SpotifyClone.album al
ON m.album_id = al.album_id
INNER JOIN SpotifyClone.artista a
ON al.artista_id = a.artista_id;