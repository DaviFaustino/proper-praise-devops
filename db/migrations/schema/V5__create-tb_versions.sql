CREATE TYPE tone as ENUM ('C','Db','D','Eb','E','F','Gb','G','Ab','A','Bb','B');

CREATE TABLE tb_versions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(96) NOT NULL,
    owner VARCHAR(64) NOT NULL,
    translation_id UUID REFERENCES tb_translations NOT NULL,
    song_dynamics SMALLINT NOT NULL,
    tone tone,
    links VARCHAR(128) ARRAY NOT NULL,
    is_original BOOLEAN NOT NULL,
    yt_views BIGINT NOT NULL
);
