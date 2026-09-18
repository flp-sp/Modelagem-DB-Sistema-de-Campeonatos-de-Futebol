ALTER TABLE partidas
ADD COLUMN fk_estadio INT NOT NULL,
ADD CONSTRAINT fk_partidas_estadios
FOREIGN KEY(fk_estadio)
REFERENCES estadios(id);

ALTER TABLE jogadores
ADD COLUMN fk_time INT NOT NULL,
ADD CONSTRAINT fk_times_jogadores
FOREIGN KEY(fk_time)
REFERENCES times(id);

ALTER TABLE inscricao
ADD COLUMN data_inscricao DATE NOT NULL