create table logs(
                     id SERIAL PRIMARY KEY,
                     usuario VARCHAR(50),
                     descricao TEXT,
                     logs_ts TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users
(
    pk       int GENERATED ALWAYS AS IDENTITY,
    username text NOT NULL,
    gecos    text,
    email    text NOT NULL,
    PRIMARY KEY (pk),
    UNIQUE (username)
);
CREATE TABLE IF NOT EXISTS users(
    pk       int GENERATED ALWAYS AS IDENTITY,
    username text NOT NULL,
    gecos    text,
    email    text NOT NULL,
    PRIMARY KEY (pk),
    UNIQUE (username)
);
