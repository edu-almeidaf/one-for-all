SELECT a.artista AS artista,
al.album AS album,
COUNT(s.usuario_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = a.artista_id
LEFT JOIN SpotifyClone.seguindoArtistas AS s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;