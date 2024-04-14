-- Criando table de alunos e cursos no postgres

CREATE TABLE IF NOT EXISTS alunos ( -- Se a tabela não existir, ela será criada
    id SERIAL PRIMARY KEY, -- SERIAL é um tipo de dado que incrementa automaticamente
    nome VARCHAR(255) NOT NULL, -- NOT NULL é para não permitir valores nulos
    email VARCHAR(255) NOT NULL, -- VARCHAR é um tipo de dado para strings QUE TEM LIMITES DE TAMANHO
    idade INTEGER NOT NULL -- INT é um tipo de dado para números inteiros
);

CREATE TABLE IF NOT EXISTS cursos ( -- Se a tabela não existir, ela será criada
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL -- TEXT é um tipo de dado para strings QUE PODEM TER TAMANHO VARIÁVEL
);