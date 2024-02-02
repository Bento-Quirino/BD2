/*
Crie um banco de dados com o nome de "escola" com os seguintes requisitos:

Precisamos saber os alunos que estão matriculados em uma escola.
Precisamos saber quais são os cursos que a escola oferece.
Precisamos das chamadas que são feitas em cada curso e em cada dia.

Crie as tabelas necessárias para atender a esses requisitos.
- Crie uma tabela chamada "alunos" com os seguintes campos:
    - id: inteiro, auto incremento e chave primária.
    - nome: texto.
    - idade: inteiro.
    - ra: inteiro.
- Crie uma tabela chamada "cursos" com os seguintes campos:
    - id: inteiro, auto incremento e chave primária.
    - nome: texto.
    - professor: texto.
- Crie uma tabela chamada "chamadas" com os seguintes campos:
    - id: inteiro, auto incremento e chave primária.
    - curso_id: inteiro, chave estrangeira para a tabela "cursos".
    - data: data.
    - chamada: json.

O JSON deve se parecer com:
{
    "alunos": [
        {
            "id": 1, // id do aluno na tabela "alunos"
            "presente": true
        },
        {
            "id": 2,
            "presente": false
        }
    ]
}

Avaliação 0 a 10 (não é permitido usar IA's geradores de código):
- 1.5 ponto por organização e boas práticas.
- 1.5 ponto por seeders corretos.
- 2 ponto por relacionamento correto entre as tabelas.
- 2 pontos por JSON.
- 3 pontos por conseguir fazer DELETE, UPDATE e SELECT em todas as tabelas que o professor pedir.
Total: 10 pontos.
EXTRA:
- De 1 a 5 pontos extras por criatividade ou por fazer mais do que o professor pedir.




-- Links úteis
- Tipos de dados do PostgreSQL: https://www.postgresql.org/docs/8.1/datatype.html
- JSON no PostgreSQL: postgresql.org/docs/current/datatype-json.html
*/