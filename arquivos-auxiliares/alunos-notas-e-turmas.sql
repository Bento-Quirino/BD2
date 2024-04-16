DROP TABLE IF EXISTS alunos CASCADE;
DROP TABLE IF EXISTS materias_alunos;
DROP TABLE IF EXISTS materias;
DROP TABLE IF EXISTS cursos;

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





-- SEEDERS
-- Inserts de exemplo de alunos
INSERT INTO alunos (ra, nome_completo, email, senha, descricao)
VALUES
    ('1234567890', 'Otávio da silva', 'otavio.silva@example.com', 'senha123', 'Aluno do Ensino Médio'),
    ('0987654321', 'Richard Vinicius', 'richard.vinicius@example.com', 'senha456', 'Aluna do Ensino Médio'),
    ('1357924680', 'Murilo Joules', 'murilo.joules@example.com', 'senha789', 'Aluno do Ensino Médio'),
    ('2468013579', 'Ana Lima', 'ana.lima@example.com', 'senhaabc', 'Aluna do Ensino Médio'),
    ('9876543210', 'Vitor Tavares', 'vitor.tavares@example.com', 'senhadef', 'Aluno do Ensino Médio'),
    ('4567890123', 'Mariana Oliveira', 'mariana.oliveira@example.com', 'senhaghi', 'Aluna do Ensino Médio'),
    ('6543210987', 'Paulo Costa', 'paulo.costa@example.com', 'senhajkl', 'Aluno do Ensino Médio'),
    ('3210987654', 'Juliana Almeida', 'juliana.almeida@example.com', 'senhamno', 'Aluna do Ensino Médio'),
    ('7890123456', 'Rafaela Pereira', 'rafaela.pereira@example.com', 'senhapqr', 'Aluna do Ensino Médio'),
    ('2109876543', 'Fernando Rocha', 'fernando.rocha@example.com', 'senhastu', 'Aluno do Ensino Médio'),
    ('6789012345', 'Carla Barbosa', 'carla.barbosa@example.com', 'senhavwx', 'Aluna do Ensino Médio'),
    ('9876543200', 'Thiago Melo', 'thiago.melo@example.com', 'senhazyx', 'Aluno do Ensino Médio'),
    ('1234567891', 'Beatriz Lima', 'beatriz.lima@example.com', 'senha321', 'Aluna do Ensino Médio'),
    ('9987654321', 'Rodrigo Alves', 'rodrigo.alves@example.com', 'senha654', 'Aluno do Ensino Médio'),
    ('1357924689', 'Aline Santos', 'aline.santos@example.com', 'senha987', 'Aluna do Ensino Médio'),
    ('2468013599', 'Gabriel Oliveira', 'gabriel.oliveira@example.com', 'senha000', 'Aluno do Ensino Médio'),
    ('9876543011', 'Renata Pereira', 'renata.pereira@example.com', 'senha111', 'Aluna do Ensino Médio'),
    ('4567890122', 'Thales Costa', 'thales.costa@example.com', 'senha222', 'Aluno do Ensino Médio'),
    ('6543210988', 'Isabela Almeida', 'isabela.almeida@example.com', 'senha333', 'Aluna do Ensino Médio'),
    ('3210987655', 'Guilherme Pereira', 'guilherme.pereira@example.com', 'senha444', 'Aluno do Ensino Médio');



-- Inserts de exemplo de cursos
-- Inserir o curso de Técnico em Desenvolvimento de Sistemas
INSERT INTO cursos (nome, carga_horaria, descricao, valor, vagas)
VALUES ('Técnico em Desenvolvimento de Sistemas', 1200, 'Curso técnico para formação de desenvolvedores de software', 2000.00, 50);

-- Inserir o curso de Técnico em Games
INSERT INTO cursos (nome, carga_horaria, descricao, valor, vagas)
VALUES ('Técnico em Games', 1200, 'Curso técnico para formação de desenvolvedores de games', 2000.00, 50);

-- Inserir o curso de Ensino Médio
INSERT INTO cursos (nome, carga_horaria, descricao, valor, vagas)
VALUES ('Ensino Médio', 2400, 'Ensino Médio regular', 0.00, 100);

-- Inserir o curso de Ensino Fundamental
INSERT INTO cursos (nome, carga_horaria, descricao, valor, vagas)
VALUES ('Ensino Fundamental', 2400, 'Ensino Fundamental regular', 0.00, 100);



-- Inserts de exemplo de matérias
INSERT INTO materias (nome, carga_horaria, curso_id, descricao)
VALUES
    ('Português', 80, 1, 'Matéria do Ensino Médio'),
    ('Matemática', 80, 1, 'Matéria do Ensino Médio'),
    ('Inglês', 80, 1, 'Matéria do Ensino Médio'),
    ('Química', 80, 1, 'Matéria do Ensino Médio'),
    ('Física', 80, 1, 'Matéria do Ensino Médio'),
    ('História', 80, 1, 'Matéria do Ensino Médio'),
    ('Geografia', 80, 1, 'Matéria do Ensino Médio'),
    ('Filosofia', 80, 1, 'Matéria do Ensino Médio'),
    ('Banco de Dados', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas'),
    ('Arquitetura Orientada a Serviços', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas'),
    ('Programação Web', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas'),
    ('Programação Mobile', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas'),
    ('Inteligência Artificial', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas'),
    ('Estrutura de Dados', 160, 1, 'Matéria do curso de Desenvolvimento de Sistemas');


-- SEEDER ALUNOS/MATERIAS

-- Conectar o aluno 1 com todas as matérias do Ensino Médio
INSERT INTO materias_alunos 
(aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico,aprovado)
VALUES
    (1, 1, 0, 0, 0, 0, 2, FALSE),
    (1, 2, 0, 0, 0, 0, 2, FALSE),
    (1, 3, 0, 0, 0, 0, 2, FALSE),
    (1, 4, 0, 0, 0, 0, 2, FALSE),
    (1, 5, 0, 0, 0, 0, 2, FALSE),
    (1, 6, 0, 0, 0, 0, 2, FALSE),
    (1, 7, 0, 0, 0, 0, 2, FALSE),
    (1, 8, 0, 0, 0, 0, 2, FALSE);

-- Conectar o aluno 2 com todas as matérias do Ensino Médio
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (2, 1, 0, 0, 0, 0, 2, FALSE),
    (2, 2, 0, 0, 0, 0, 2, FALSE),
    (2, 3, 0, 0, 0, 0, 2, FALSE),
    (2, 4, 0, 0, 0, 0, 2, FALSE),
    (2, 5, 0, 0, 0, 0, 2, FALSE),
    (2, 6, 0, 0, 0, 0, 2, FALSE),
    (2, 7, 0, 0, 0, 0, 2, FALSE),
    (2, 8, 0, 0, 0, 0, 2, FALSE);

-- Conectar o aluno 3 com todas as matérias do Ensino Médio
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (3, 1, 0, 0, 0, 0, 2, FALSE),
    (3, 2, 0, 0, 0, 0, 2, FALSE),
    (3, 3, 0, 0, 0, 0, 2, FALSE),
    (3, 4, 0, 0, 0, 0, 2, FALSE),
    (3, 5, 0, 0, 0, 0, 2, FALSE),
    (3, 6, 0, 0, 0, 0, 2, FALSE),
    (3, 7, 0, 0, 0, 0, 2, FALSE),
    (3, 8, 0, 0, 0, 0, 2, FALSE);