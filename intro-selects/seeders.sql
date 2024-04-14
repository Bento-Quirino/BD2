-- Seeders para a tabela de alunos

INSERT INTO alunos (nome, email, idade) VALUES
('João', 'joão@email.com', 20),
('Maria', 'maria@email.com', 22),
('José', 'josé@email.com', 24);
-- Perceba que não passamos o id, pois ele é do tipo SERIAL e incrementa automaticamente

-- Seeders para a tabela de cursos

INSERT INTO cursos (nome, descricao) VALUES
('Curso de Matemática', 'Curso de matemática básica'),
('Curso de Física', 'Curso de física básica'),
('Curso de Química', 'Curso de química básica');
-- Perceba que não passamos o id, pois ele é do tipo SERIAL e incrementa automaticamente