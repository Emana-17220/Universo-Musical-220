# Preparação para publicação pública

Este checklist foi criado para garantir que o projeto está pronto para ser publicado em produção.

## 1. Verificações essenciais

- [ ] O ficheiro principal do site é `index.html`.
- [ ] A página abre corretamente em um navegador local.
- [ ] O HTML não tem erros visíveis de renderização.
- [ ] Os links internos funcionam corretamente.
- [ ] Os assets e imagens têm caminhos válidos.

## 2. Configuração do Supabase

Antes da publicação em ambiente real, confirme que:

- [ ] `SUPABASE_URL` está preenchida corretamente
- [ ] `SUPABASE_ANON_KEY` está preenchida corretamente
- [ ] as tabelas `music`, `artists` e `news` existem
- [ ] o bucket `media` foi criado
- [ ] o utilizador administrador foi configurado

## 3. Deploy no GitHub Pages

1. Aceda a `Settings > Pages` no GitHub.
2. Escolha `Deploy from a branch`.
3. Selecione `main` e a pasta raiz `/`.
4. Guarde as alterações.
5. Aguarde a publicação.

## 4. Verificação final

Após a publicação:

- [ ] abra a URL gerada
- [ ] confirme que a página carrega sem erros
- [ ] teste o conteúdo estático
- [ ] teste o painel de gestão após configurar o Supabase
- [ ] confirme que os uploads de imagem e áudio funcionam

## 5. Recomendação final

Para uma apresentação profissional, use a versão pública do projeto em conjunto com a documentação do Supabase e o guia de deploy.

