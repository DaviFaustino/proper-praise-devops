CREATE TABLE tb_users (
    username VARCHAR(32) PRIMARY KEY,
    password TEXT NOT NULL,
    role role NOT NULL
);
