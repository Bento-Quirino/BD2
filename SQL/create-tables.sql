CREATE TABLE IF NOT EXISTS student_config (
    id SERIAL PRIMARY KEY,
    config jsonb
);

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100),
    year_at_school INT,
    config_id INT,
    FOREIGN KEY (config_id) REFERENCES student_config(id)
);