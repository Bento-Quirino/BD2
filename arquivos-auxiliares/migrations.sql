-- Tabela de cursos técnicos
CREATE TABLE IF NOT EXISTS cursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria SMALLINT NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    vagas SMALLINT NOT NULL
);

-- Tabela materias
CREATE TABLE IF NOT EXISTS materias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria SMALLINT NOT NULL,
    curso_id INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (curso_id) REFERENCES cursos (id)
);

-- Tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
    id SERIAL PRIMARY KEY,
    ra CHAR(10) NOT NULL UNIQUE,
    nome_completo VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

-- Materias dos alunos
CREATE TABLE IF NOT EXISTS materias_alunos (
    id SERIAL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    materia_id INTEGER NOT NULL,
    nota_atitudinal DECIMAL(10, 2) NOT NULL,
    nota_licoes DECIMAL(10, 2) NOT NULL,
    nota_prova_mensal DECIMAL(10, 2) NOT NULL,
    nota_prova_bimestral DECIMAL(10, 2) NOT NULL,
    aprovado BOOLEAN NOT NULL,
    curso_tecnico INTEGER NOT NULL,
    FOREIGN KEY (curso_tecnico) REFERENCES cursos (id),
    FOREIGN KEY (aluno_id) REFERENCES alunos (id),
    FOREIGN KEY (materia_id) REFERENCES materias (id)
);
