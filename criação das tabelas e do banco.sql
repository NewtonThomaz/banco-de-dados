create database gerenciador_torneio;

use gerenciador_torneio;
create table pessoa(
id_pessoa int auto_increment primary key,
nome varchar(100) not null,
idade int not null,
cpf int not null
);

use gerenciador_torneio;
create table jogador(
id_jogador int auto_increment primary key,
id_pessoa int not null,
foreign key (id_pessoa) references pessoa(id_pessoa)
);

use gerenciador_torneio;
create table equipe(
id_equipe int auto_increment primary key,
nome_equipe varchar(100) not null
);

use gerenciador_torneio;
create table jogador_equipe(
id_jogador_equipe int auto_increment primary key,
id_jogador int not null,
id_equipe int not null,
foreign key (id_jogador) references jogador(id_jogador),
foreign key (id_equipe) references equipe(id_equipe)
);


use gerenciador_torneio;
create table jogo(
id_jogo int auto_increment primary key,
descricao varchar(100) not null
);

use gerenciador_torneio;
create table jogador_equipe_jogo(
id_jogador_equipe_jogo int auto_increment primary key,
id_equipe int not null,
id_jogador_equipe int not null,
id_jogo int not null,
foreign key (id_jogador_equipe) references jogador_equipe (id_jogador_equipe),
foreign key (id_equipe) references equipe (id_equipe),
foreign key (id_jogo) references jogo (id_jogo)
);

use gerenciador_torneio;
create table tipo_torneio(
id_tipo_torneio int auto_increment primary key,
tipo_torneio varchar(100) not null
);

use gerenciador_torneio;
create table torneio(
id_torneio int auto_increment primary key,
id_tipo_torneio int not null,
id_jogo int not null,
nome_torneio varchar(100),
descricao varchar(200) not null,
foreign key (id_jogo) references jogo (id_jogo),
foreign key (id_tipo_torneio) references tipo_torneio (id_tipo_torneio)
);

use gerenciador_torneio;
create table jogo_torneio(
id_jogo_torneio int auto_increment primary key,
id_jogo int not null,
id_equipe1 int,
id_equipe2 int,
id_jogador1 int,
id_jogador2 int,
id_torneio int not null,
jogo_equipe character not null,
foreign key (id_jogo) references jogo (id_jogo),
foreign key (id_equipe1) references equipe (id_equipe),
foreign key (id_equipe2) references equipe (id_equipe),
foreign key (id_jogador1) references jogador (id_jogador),
foreign key (id_jogador2) references jogador (id_jogador),
foreign key (id_torneio) references torneio (id_torneio)
);