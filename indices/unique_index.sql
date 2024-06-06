CREATE TABLE funcionarios (
                              funcionario_id SERIAL PRIMARY KEY,
                              primeiro_nome VARCHAR(255) NOT NULL,
                              ultimo_nome VARCHAR(255) NOT NULL,
                              email VARCHAR(255) UNIQUE
);

ALTER TABLE funcionarios ADD telefone VARCHAR(20);

CREATE UNIQUE INDEX idx_funcionarios_telefone ON funcionarios(telefone);

INSERT INTO funcionarios(primeiro_nome, ultimo_nome, email, telefone) VALUES ('Mary','Jane','mary.jane@teste.com', '(55)-555-1234');

ALTER TABLE funcionarios ADD work_phone VARCHAR(20), ADD extension VARCHAR(5);

CREATE UNIQUE INDEX idx_funcionarios_workphone ON funcionarios(work_phone, extension);