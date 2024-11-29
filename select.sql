-- mostrar quem faz parte de qual time
SELECT
    p.nome AS nome_pessoa,
    e.nome_equipe AS nome_equipe
FROM
    pessoa p
JOIN
    jogador j ON p.id_pessoa = j.id_pessoa
JOIN
    jogador_equipe je ON j.id_jogador = je.id_jogador
JOIN
    equipe e ON je.id_equipe = e.id_equipe;

-- mostrar quem jogou contra quem
SELECT
    e1.nome_equipe AS time_1,
    e2.nome_equipe AS time_2,
    jt.id_jogo_torneio AS jogo_id
FROM
    jogo_torneio jt
JOIN
    equipe e1 ON jt.id_equipe1 = e1.id_equipe
JOIN
    equipe e2 ON jt.id_equipe2 = e2.id_equipe;