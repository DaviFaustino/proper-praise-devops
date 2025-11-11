CREATE TABLE tb_songs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(64) NOT NULL,
    original_version_owner VARCHAR(64) NOT NULL
);
