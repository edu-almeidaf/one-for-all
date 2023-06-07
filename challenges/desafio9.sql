SELECT COUNT(h.usuario_id) AS musicas_no_historico
FROM SpotifyClone.historicoReproducao AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
WHERE u.nome_usuario = 'Barbara' AND u.sobrenome_usuario = 'Liskov'
GROUP BY u.nome_usuario, u.sobrenome_usuario;