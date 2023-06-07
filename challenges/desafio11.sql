SELECT a.album AS album,
	COUNT(f.musica_id) AS favoritadas
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.musica AS m
ON a.album_id = m.album_id
INNER JOIN SpotifyClone.musicasFavoritas AS f
ON m.musica_id = f.musica_id
GROUP BY album
ORDER BY favoritadas DESC, album
LIMIT 3;