# Universo Musical 220

Plataforma musical em estilo landing page para divulgar artistas, músicas e notícias do cenário musical angolano. O projeto está preparado para funcionar como site estático e, quando configurado, conecta-se ao Supabase para gerenciamento de conteúdos em tempo real.

## Visão geral

O repositório contém uma página web principal com as seguintes áreas:

- Início
- Músicas
- Artistas
- Notícias
- Gestão/Administração
- Contacto

Além disso, o site possui um painel administrativo para:

- publicar músicas
- cadastrar artistas
- publicar notícias
- remover itens já divulgados

## Estrutura do projeto

- `README.md` — documentação principal do projeto
- `index-9.html` — página pública principal
- `universo_musical_220_pronto_para_publicacao.html` — versão alternativa/produção pronta para publicação
- `LICENSE` — licença do projeto
- `docs/` — documentação complementar da plataforma

## Como funciona

O projeto foi desenvolvido para funcionar em duas fases:

1. Modo apresentação
   - a página exibe conteúdo estático ou placeholders
   - pode ser aberta diretamente em um navegador

2. Modo integrado com Supabase
   - o frontend usa `@supabase/supabase-js`
   - a base de dados armazena músicas, artistas e notícias
   - o painel administrativo permite autenticação, publicação e gestão

## Configuração rápida

1. Abra o arquivo HTML que pretende utilizar.
2. No código JavaScript, substitua os valores:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`
3. Crie as tabelas no Supabase usando o script em `docs/database.sql`.
4. Configure o bucket de storage `media` para arquivos de áudio e imagem.
5. Publique o projeto em GitHub Pages, Netlify, Vercel ou outro host estático.

## Documentação

- [Documentação geral](docs/README.md)
- [Configuração do Supabase](docs/configuracao-supabase.md)
- [Schema SQL](docs/database.sql)

## Observações importantes

O código atual inclui placeholders para a configuração do Supabase:

```js
const SUPABASE_URL = "COLOCA_AQUI_A_URL_DO_PROJETO";
const SUPABASE_ANON_KEY = "COLOCA_AQUI_A_CHAVE_ANON_PUBLICA";
```

Sem esses valores, o painel administrativo fica em modo de apresentação e não publica conteúdo real.

## Licença

Este projeto está licenciado sob os termos da licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.

## Próximos passos sugeridos

- criar um painel visual para edição de textos
- permitir upload de capas e áudios com validação mais forte
- integrar autenticação por e-mail e password com roles administrativas
- adicionar SEO e otimização para pesquisa em motores de busca
- preparar deploy automático em produção

