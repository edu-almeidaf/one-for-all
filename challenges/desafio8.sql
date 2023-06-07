SELECT a.artista AS artista,
al.album AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = a.artista_id
GROUP BY artista, album
HAVING artista = 'Elis Regina'
ORDER BY album;