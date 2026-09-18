CREATE TABLE campeonatos(
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
ano INT NOT NULL,
data_inicio DATE NOT NULL,
data_fim DATE NOT NULL
);

CREATE TABLE times(
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
estado CHAR(2) NOT NULL,
ano_fundacao INT NOT NULL
);

CREATE TABLE inscricao(
id SERIAL PRIMARY KEY,
fk_campeonato INT NOT NULL,
FOREIGN KEY (fk_campeonato)
REFERENCES campeonatos(id),
fk_time INT NOT NULL,
FOREIGN KEY (fk_time)
REFERENCES times(id)
);

CREATE TABLE partidas(
id SERIAL PRIMARY KEY,
fk_time_mandante INT NOT NULL,
FOREIGN KEY (fk_time_mandante)
REFERENCES times(id),
fk_time_visitante INT NOT NULL,
FOREIGN KEY (fk_time_visitante)
REFERENCES times(id),
gols_time_mandante SMALLINT NOT NULL DEFAULT 0,
gols_time_visitante SMALLINT NOT NULL DEFAULT 0,
data_partida DATE NOT NULL,
hora TIME NOT NULL
);

CREATE TABLE estadios(
id SERIAL PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
cidade VARCHAR(100) NOT NULL,
capacidade INT NOT NULL
);

CREATE TABLE jogadores(
id SERIAL PRIMARY KEY,
nome VARCHAR(250) NOT NULL,
data_nascimento DATE NOT NULL,
posicao VARCHAR(3) NOT NULL,
num_camisa INT NOT NULL
);