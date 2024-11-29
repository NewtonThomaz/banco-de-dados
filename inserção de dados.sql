-- inserir pessoa
insert into pessoa (nome,idade,cpf)
values 
("Raphael",18,47282),
("Vicente",21,89232),
("Bernardo",21,2016),
("Nicholas",22,36557),
("Francisco",26,1940),
("Leonardo",31,22653);

-- add pessoa em jogador
use gerenciador_torneio;
insert into jogador(id_pessoa)
values 
(1),
(2),
(3),
(4),
(5),
(6);

-- inserir equipe
insert into equipe (nome_equipe)
values
("Equipe Francisco e Leonardo"),
("Equipe Bernardo e Nicholas");

-- add jogador na equipe
insert into jogador_equipe (id_jogador,id_equipe)
values
(1,1),
(2,1),
(3,2),
(4,2);

-- inserir jogo(partida)
insert into jogo (descricao)
values
("O time 1(francisco e leonardo) jogou contra o time 2 (bernardo e nicholas)");

-- que equipe jogou qual jogo
insert into jogador_equipe_jogo (id_jogo, id_jogador_equipe)
values
(1,1),
(1,2),
(1,3),
(1,4);

-- inserir tipo torneio
insert into tipo_torneio (tipo_torneio)
values
("eliminatoria");

insert into torneio (id_tipo_torneio,nome_torneio,descricao,id_jogo)
values
(1,"torneio de tenis", "disputa de tenis em equipes e individual", 1);

insert into jogo_torneio (id_jogador1,id_jogador2,id_equipe1,id_equipe2,jogo_equipe,id_torneio,id_jogo)
values
(null,null,1,2, "T",1,1),
(1,2,null,null, "F",1,1);
