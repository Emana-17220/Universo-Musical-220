# Deploy no GitHub Pages

Este guia explica como publicar o projeto Universo Musical 220 no GitHub Pages para disponibilizar a landing page online.

## 1. Requisitos

Antes de publicar, certifique-se de que:

- o repositório já está no GitHub
- o projeto está atualizado no branch principal
- o ficheiro HTML principal está pronto para ser servido
- você tem acesso ao painel do GitHub

## 2. Opções de publicação

Você pode publicar uma das seguintes versões:

- `index-9.html`
- `universo_musical_220_pronto_para_publicacao.html`

A recomendação é usar a versão final de produção (`universo_musical_220_pronto_para_publicacao.html`) como página principal do site.

## 3. Preparar a página principal

No repositório, crie ou ajuste um ficheiro chamado:

- `index.html`

Esse ficheiro vai ser o ponto de entrada do GitHub Pages.

### Opção recomendada

Copie o conteúdo da página `universo_musical_220_pronto_para_publicacao.html` para o arquivo `index.html`.

Se preferir, pode manter a sua página atual como `index-9.html` e configurar o GitHub Pages para publicar esse ficheiro, mas o caminho mais simples é usar `index.html` como página principal.

## 4. Configurar o GitHub Pages

1. Aceda ao repositório no GitHub.
2. Clique em `Settings`.
3. No menu lateral, selecione `Pages`.
4. Em `Source`, escolha uma das opções:
   - `Deploy from a branch`
5. Seleciona o branch principal, por exemplo `main`.
6. Pasta raiz: `/ (root)`.
7. Clique em `Save`.

O GitHub vai gerar uma URL pública, por exemplo:

```text
https://<usuario>.github.io/<nome-do-repositorio>/
```

## 5. Verificar a publicação

Após alguns minutos, o GitHub Pages vai disponibilizar a sua página. Abra a URL gerada e confirme se:

- a landing page carrega corretamente
- os textos aparecem sem erros
- o navegador mostra a página estética e funcional

## 6. Configurar o Supabase antes do deploy final

Se a plataforma for usada com conteúdo dinâmico, antes de publicar em produção configure:

- `SUPABASE_URL`
- `SUPABASE_ANON_KEY`

Esses valores devem estar corretos no código JavaScript da página.

Caso contrário, a página continuará em modo de demonstração e não mostrará conteúdo real.

## 7. Boas práticas

- mantenha o branch principal sempre limpo
- teste a página localmente antes do deploy
- mantenha backups do HTML e dos assets
- use nomes de ficheiros consistentes
- verifique se as imagens e áudio têm caminhos corretos

## 8. Problemas comuns

### Página aparece em branco

Verifique se:

- o ficheiro principal é `index.html`
- não existem erros de HTML ou JavaScript que impeçam o carregamento
- o GitHub Pages foi ativado corretamente

### Conteúdo estático mas não dinâmico

Isso geralmente significa que o Supabase ainda não foi configurado ou que as chaves do projeto não foram preenchidas.

### Links quebrados ou imagens sem carregar

Confirme se os caminhos relativos estão corretos e se os ficheiros existem na branch publicada.

## 9. Deploy recomendado em produção

Para um ambiente mais profissional, considere:

- publicar em Netlify ou Vercel
- usar um domínio personalizado
- automatizar o deploy por meio de CI/CD
- manter a configuração da base de dados e storage separada do front-end

## 10. Próximo passo

Após a publicação no GitHub Pages, o próximo passo recomendado é:

- seguir o guia de configuração do Supabase em [configuracao-supabase.md](configuracao-supabase.md)

Assim, a plataforma deixa de ser apenas uma landing page e passa a funcionar com gestão real de conteúdo.

