SELECT
	CONCAT(u.nome_usuario, ' ', u.sobrenome_usuario) AS pessoa_usuaria,
  COUNT(DISTINCT h.musica_id) AS musicas_ouvidas,
  ROUND(SUM(m.duracao_segundos) /60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historicoReproducao h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musica AS m
ON h.musica_id = m.musica_id
GROUP BY u.usuario_id, u.nome_usuario, u.sobrenome_usuario
ORDER BY u.nome_usuario, u.sobrenome_usuario;