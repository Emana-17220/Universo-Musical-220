-- Tabela de músicas
CREATE TABLE IF NOT EXISTS public.music (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    artist TEXT NOT NULL,
    audio_url TEXT,
    cover_url TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Tabela de artistas
CREATE TABLE IF NOT EXISTS public.artists (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    bio TEXT,
    photo_url TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Tabela de notícias
CREATE TABLE IF NOT EXISTS public.news (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Permitir leitura pública
ALTER TABLE public.music ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.artists ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.news ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public read access for music"
ON public.music FOR SELECT
USING (true);

CREATE POLICY "Public read access for artists"
ON public.artists FOR SELECT
USING (true);

CREATE POLICY "Public read access for news"
ON public.news FOR SELECT
USING (true);

-- Permitir escrita apenas para utilizadores autenticados
CREATE POLICY "Authenticated users can insert music"
ON public.music FOR INSERT
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update music"
ON public.music FOR UPDATE
USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can delete music"
ON public.music FOR DELETE
USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can insert artists"
ON public.artists FOR INSERT
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update artists"
ON public.artists FOR UPDATE
USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can delete artists"
ON public.artists FOR DELETE
USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can insert news"
ON public.news FOR INSERT
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can update news"
ON public.news FOR UPDATE
USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can delete news"
ON public.news FOR DELETE
USING (auth.role() = 'authenticated');

-- Índices úteis
CREATE INDEX IF NOT EXISTS idx_music_created_at ON public.music(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_artists_created_at ON public.artists(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_news_created_at ON public.news(created_at DESC);

