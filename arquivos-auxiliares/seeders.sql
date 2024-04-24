-- Inserts de exemplo de alunos
INSERT INTO alunos (ra, nome_completo, email, senha, descricao)
VALUES
    ('2203267890', 'Otávio da silva', 'otavio.silva@example.com', 'senha123', 'Aluno do Ensino Médio'),
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
    (1, 1, 3, 3, 0, 3, 2, FALSE),
    (1, 2, 10, 6, 5, 6, 2, FALSE),
    (1, 3, 10, 4, 5, 7, 2, FALSE),
    (1, 4, 4, 4, 4, 0, 2, FALSE),
    (1, 5, 8, 4, 6, 4, 2, FALSE),
    (1, 6, 7, 7, 5, 6, 2, FALSE),
    (1, 7, 4, 0, 4, 0, 2, FALSE),
    (1, 8, 1, 3, 1, 0, 2, FALSE);

-- Conectar o aluno 2 com todas as matérias do Ensino Médio
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (2, 1, 5, 8, 3, 0, 2, FALSE),
    (2, 2, 7, 4, 7, 10, 2, FALSE),
    (2, 3, 5, 7, 5, 7, 2, FALSE),
    (2, 4, 7, 7, 8, 8, 2, FALSE),
    (2, 5, 4, 8, 9, 8, 2, FALSE),
    (2, 6, 10, 10, 7, 9, 2, FALSE),
    (2, 7, 0, 5, 6, 8, 2, FALSE),
    (2, 8, 0, 5, 5, 5, 2, FALSE);

-- Conectar o aluno 3 com todas as matérias do Ensino Médio
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (3, 1, 10, 8, 5, 0, 2, FALSE),
    (3, 2, 7, 8, 10, 10, 2, FALSE),
    (3, 3, 5, 5, 5, 7, 2, FALSE),
    (3, 4, 7, 7, 8, 8, 2, FALSE),
    (3, 5, 4, 8, 9, 8, 2, FALSE),
    (3, 6, 10, 5, 8, 10, 2, FALSE),
    (3, 7, 10, 8, 8, 8, 2, FALSE),
    (3, 8, 10, 8, 8, 8, 2, FALSE);
    
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (4, 1, 10, 8, 5, 0, 1, FALSE),
    (4, 2, 7, 8, 7, 10, 1, FALSE),
    (4, 3, 5, 5, 5, 7, 1, FALSE),
    (4, 4, 7, 7, 8, 4, 1, FALSE),
    (4, 5, 4, 8, 9, 8, 1, FALSE),
    (4, 6, 8, 5, 8, 10, 1, FALSE),
    (4, 7, 5, 4, 8, 6, 1, FALSE),
    (4, 8, 7, 8, 7, 8, 1, FALSE);
    
INSERT INTO materias_alunos (aluno_id, materia_id, nota_atitudinal, nota_licoes, nota_prova_mensal, nota_prova_bimestral, curso_tecnico, aprovado)
VALUES
    (5, 1, 0, 8, 5, 6, 1, FALSE),
    (5, 2, 0, 0, 7, 10, 1, FALSE),
    (5, 3, 2, 0, 5, 7, 1, FALSE),
    (5, 4, 0, 0, 8, 4, 1, FALSE),
    (5, 5, 4, 5, 9, 8, 1, FALSE),
    (5, 6, 8, 5, 8, 7, 1, FALSE),
    (5, 7, 5, 4, 8, 6, 1, FALSE),
    (5, 8, 6, 5, 5, 8, 1, FALSE);
