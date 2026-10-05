# Documentação do projeto

Esta pasta reúne a documentação técnica, operacional e comercial do projeto Universo Musical 220.

## Objetivo da documentação

A documentação foi organizada para apoiar três cenários principais:

1. visualização do projeto e compreensão do funcionamento geral
2. configuração de serviços externos, como Supabase
3. publicação em ambientes de produção, como GitHub Pages

## Índice da documentação

- [Configuração do Supabase](configuracao-supabase.md)
- [Deploy no GitHub Pages](github-pages-deploy.md)
- [Guia de apresentação](guia-apresentacao.md)
- [Schema de base de dados](database.sql)

## Visão geral

O projeto consiste em uma plataforma musical de apresentação pública com painel administrativo. Ele foi construído para funcionar em modo estático e, quando configurado, usar o Supabase para autenticação, armazenamento e gestão dinâmica de conteúdos.

## Estrutura dos ficheiros principais

- `../README.md` — apresentação geral do repositório
- `../index-9.html` — página pública principal
- `../universo_musical_220_pronto_para_publicacao.html` — versão final preparada para publicação
- `../LICENSE` — licença do projeto

## Fluxo recomendado

1. Revisar a landing page em modo estático.
2. Configurar o Supabase para dados e autenticação.
3. Validar o painel administrativo.
4. Publicar a plataforma em GitHub Pages ou outro host estático.

## Ordem recomendada de leitura

- [Guia de apresentação](guia-apresentacao.md) — visão executiva e comercial
- [Configuração do Supabase](configuracao-supabase.md) — setup técnico
- [Deploy no GitHub Pages](github-pages-deploy.md) — publicação em produção
- [Schema de base de dados](database.sql) — estrutura de dados

## Observações finais

A documentação está organizada para permitir uma transição fluida entre apresentação, desenvolvimento e publicação. Isso facilita tanto a apresentação do projecto a parceiros como a implementação em produção.
