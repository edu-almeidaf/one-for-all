SELECT CONCAT(u.nome_usuario, ' ', u.sobrenome_usuario) AS pessoa_usuaria,
	CASE
		WHEN MAX(h.data_reproducao) >= '2021-01-01'
        THEN 'Ativa' ELSE 'Inativa'
	END AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.historicoReproducao AS h
ON u.usuario_id = h.usuario_id
GROUP BY u.usuario_id, u.nome_usuario, u.sobrenome_usuario
HAVING MAX(h.data_reproducao) >= 2021-01-01
ORDER BY pessoa_usuaria;