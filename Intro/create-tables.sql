-- Criando entidades
CREATE TABLE IF NOT EXISTS pessoas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    peso DECIMAL,
    altura DECIMAL
);

CREATE TABLE IF NOT EXISTS exercicios (
    name VARCHAR(30) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS pessoa_exercicio (
    pessoa_id INT,
    exercicio_name VARCHAR(30),
    repeticoes INT,
    series INT,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id),
    FOREIGN KEY (exercicio_name) REFERENCES exercicios(name)
);