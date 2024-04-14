-- VAMOS TRAZER todos os dados da tabela de alunos
SELECT * FROM alunos;

-- VAMOS TRAZER todos os dados da tabela de cursos
SELECT * FROM cursos;

-- VAMOS TRAZER o aluno com nome 'João'
SELECT * FROM alunos WHERE nome = 'João'; -- Perceba que se o nome for diferente de 'João', não será retornado nada

-- VAMOS TRAZER o curso com nome 'Curso de Matemática'
SELECT * FROM cursos WHERE nome = 'Curso de Matemática'; -- Perceba que se o nome for diferente de 'Curso de Matemática', não será retornado nada

-- VAMOS TRAZER os alunos com idade maior que 21
SELECT * FROM alunos WHERE idade > 21;