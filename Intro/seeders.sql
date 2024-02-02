/* Seeders para entidades */
-- Criando pessoas
INSERT INTO pessoas (nome, peso, altura) VALUES ('João', 80, 1.80);
INSERT INTO pessoas (nome, peso, altura) VALUES ('Maria', 60, 1.60);

-- Criando exercícios
INSERT INTO exercicios (name) VALUES ('Supino');
INSERT INTO exercicios (name) VALUES ('Agachamento');
INSERT INTO exercicios (name) VALUES ('Barra fixa');

-- Vinculando exercícios com pessoas
INSERT INTO pessoa_exercicio (pessoa_id, exercicio_name, repeticoes, series) VALUES (1, 'Supino', 10, 3);
INSERT INTO pessoa_exercicio (pessoa_id, exercicio_name, repeticoes, series) VALUES (1, 'Agachamento', 10, 3);
INSERT INTO pessoa_exercicio (pessoa_id, exercicio_name, repeticoes, series) VALUES (2, 'Supino', 10, 3);