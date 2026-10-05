# Universo Musical 220

Uma plataforma musical moderna para divulgar artistas, músicas e notícias do cenário angolano, com foco em simplicidade, apresentação visual e gestão de conteúdo.

## Visão geral

O projeto reúne uma landing page pública e um painel administrativo para gestão de conteúdo, com integração opcional ao Supabase. A estrutura foi pensada para ser fácil de publicar, manter e expandir.

## Funcionalidades principais

- Página inicial com identidade visual forte e moderna
- Seção de músicas para divulgação de lançamentos
- Área de artistas para destacar talentos
- Espaço para notícias e atualizações
- Painel de gestão para publicar e remover conteúdos
- Suporte a upload de áudio e imagens
- Integração com Supabase para dados e autenticação

## Estrutura do projeto

- `README.md` — visão geral do projeto
- `index-9.html` — landing page principal
- `universo_musical_220_pronto_para_publicacao.html` — versão pronta para publicação
- `LICENSE` — licença do projeto
- `docs/` — documentação técnica e operacional

## Como executar localmente

1. Abra qualquer um dos ficheiros HTML em um navegador.
2. Para visualizar a página pública, basta carregar a página diretamente no navegador.
3. Para habilitar a gestão real de conteúdo, configure o Supabase conforme descrito na documentação.

## Configuração do Supabase

O projeto usa a biblioteca `@supabase/supabase-js` para permitir:

- autenticação de administrador
- leitura pública dos conteúdos
- publicação e remoção de músicas, artistas e notícias
- upload de ficheiros multimédia

Os valores a configurar são:

```js
const SUPABASE_URL = "https://SEU_PROJETO.supabase.co";
const SUPABASE_ANON_KEY = "SUA_CHAVE_PUBLICA";
```

## Publicação

A aplicação pode ser publicada em:

- GitHub Pages
- Netlify
- Vercel
- qualquer hosting estático

Para instruções detalhadas, consulte a documentação de deploy:

- [Deploy no GitHub Pages](docs/github-pages-deploy.md)

## Documentação disponível

- [Documentação geral](docs/README.md)
- [Configuração do Supabase](docs/configuracao-supabase.md)
- [Deploy no GitHub Pages](docs/github-pages-deploy.md)
- [Guia de apresentação](docs/guia-apresentacao.md)
- [Schema SQL](docs/database.sql)

## Estado do projeto

O projeto está em uma fase funcional de apresentação e pode ser usado como landing page. Para operação completa com conteúdos dinâmicos, é necessário completar a integração com o Supabase.

## Próximos passos sugeridos

- reforçar a gestão de roles e permissões
- melhorar o sistema de validação de conteúdos e uploads
- adicionar suporte a SEO e meta tags mais robustas
- expandir a área de administração com dashboards e filtros
- preparar a plataforma para produção com domínio e deploy automatizado

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
