SELECT m.titulo AS cancao, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.historicoReproducao AS h
ON m.musica_id = h.musica_id
GROUP BY m.titulo
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;