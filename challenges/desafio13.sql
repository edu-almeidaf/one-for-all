SELECT
	CASE
		WHEN u.idade > 60 THEN 'Maior de 60 anos'
        WHEN u.idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Até 30 anos'
	END AS faixa_etaria,
    COUNT(DISTINCT u.usuario_id) AS total_pessoas_usuarias,
    COUNT(f.musica_id) AS total_favoritadas
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.musicasFavoritas AS f
ON u.usuario_id = f.usuario_id
GROUP BY faixa_etaria
ORDER BY
	CASE faixa_etaria
		WHEN 'Até 30 anos' THEN 1
        WHEN 'Entre 31 e 60 anos' THEN 2
        ELSE 3
	END;