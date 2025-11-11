CREATE TABLE tb_translations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    song_id UUID REFERENCES tb_songs NOT NULL,
    lenguage VARCHAR(5) NOT NULL,
    themes VARCHAR(64) ARRAY NOT NULL
);

CREATE INDEX idx_themes_gin ON tb_translations USING GIN (themes);
