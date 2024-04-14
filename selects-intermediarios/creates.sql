-- Criando um tipo especial de dado ENUM chamado classes e especies
CREATE TYPE classes AS ENUM ('Guerreiro', 'Mago', 'Ladino', 'Clérigo');
CREATE TYPE especies AS ENUM ('Humano', 'Elfo', 'Anão', 'Orc', 'Goblin', 'Gnomo');

-- Criando uma table de personagens no postgres
CREATE TABLE IF NOT EXISTS personagens (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    especie especies NOT NULL,
    classe classes NOT NULL,
    nivel SMALLINT NOT NULL,
    vida SMALLINT NOT NULL,
    forca SMALLINT NOT NULL,
    destreza SMALLINT NOT NULL,
    constituicao SMALLINT NOT NULL,
    sabedoria SMALLINT NOT NULL,
    inteligencia SMALLINT NOT NULL,
    carisma SMALLINT NOT NULL
);

-- Criando uma table de pessoas
CREATE TABLE IF NOT EXISTS pessoas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

-- Criando uma table de personagem_pessoa
CREATE TABLE IF NOT EXISTS personagem_pessoa (
    id SERIAL PRIMARY KEY,
    personagem_id INTEGER NOT NULL,
    pessoa_id INTEGER NOT NULL,
    FOREIGN KEY (personagem_id) REFERENCES personagens (id),
    FOREIGN KEY (pessoa_id) REFERENCES pessoas (id)
);
