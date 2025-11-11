CREATE TYPE lenguage as ENUM ('pt', 'en', 'es');

CREATE TABLE tb_themes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    theme VARCHAR(64) NOT NULl,
    lenguage lenguage NOT NULL
);
