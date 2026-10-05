# Documentação do projeto

Esta pasta reúne a documentação técnica e operacional do projeto Universo Musical 220.

## Índice

- [Configuração do Supabase](configuracao-supabase.md)
- [Schema de base de dados](database.sql)

## Visão geral

O projeto é uma plataforma musical em formato web para divulgação de conteúdos relacionados a artistas, músicas, notícias e gestão operacional do catálogo musical.

## Fluxo principal

1. A página pública carrega músicas, artistas e notícias.
2. A área administrativa autentica utilizadores via Supabase Auth.
3. O utilizador autorizado publica ou elimina registros.
4. Arquivos multimédia são enviados para o bucket `media` do Supabase Storage.

## Ficheiros relevantes

- `../index-9.html` — versão principal da landing page
- `../universo_musical_220_pronto_para_publicacao.html` — versão pronta para publicação
- `../README.md` — visão geral do repositório

## Recomendação

Para colocar a plataforma em produção, siga os passos descritos em:

- [Configuração do Supabase](configuracao-supabase.md)

