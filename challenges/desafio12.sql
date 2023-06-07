SELECT a.artista AS artista,
    CASE
		WHEN COUNT(f.musica_id) >= 5 THEN 'A'
        WHEN COUNT(f.musica_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(f.musica_id) BETWEEN 1 AND 2 THEN 'C'
		ELSE '-'
    END AS ranking
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.musica AS m
ON a.artista_id = m.artista_id
LEFT JOIN SpotifyClone.musicasFavoritas AS f
ON m.musica_id = f.musica_id
GROUP BY artista
ORDER BY
	CASE
		WHEN COUNT(f.musica_id) >= 5 THEN 1
        WHEN COUNT(f.musica_id) BETWEEN 3 AND 4 THEN 2
        WHEN COUNT(f.musica_id) BETWEEN 1 AND 2 THEN 3
        ELSE 4
	END, artista;