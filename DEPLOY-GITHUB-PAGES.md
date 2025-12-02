# Como Fazer Deploy no GitHub Pages

Este guia mostra como hospedar o site Uplift gratuitamente no GitHub Pages.

## Pré-requisitos

- Conta no GitHub (criar em [github.com](https://github.com))
- Git instalado no computador (baixar em [git-scm.com](https://git-scm.com))

## Passo a Passo

### 1. Criar Repositório no GitHub

1. Acesse [github.com](https://github.com) e faça login
2. Clique no botão **+** no canto superior direito e selecione **New repository**
3. Preencha:
   - **Repository name**: `uplift-website` (ou outro nome de sua preferência)
   - **Description**: "Site oficial do app Uplift - Frases motivacionais diárias"
   - Marque como **Public**
   - **NÃO** marque "Add a README file" (já temos um)
4. Clique em **Create repository**

### 2. Subir os Arquivos (Método 1: Via Terminal)

Abra o terminal na pasta do site (`/home/Julio/uplift-website`) e execute:

```bash
# Inicializar repositório Git
git init

# Adicionar todos os arquivos
git add .

# Fazer o primeiro commit
git commit -m "🚀 Primeiro commit: Site Uplift completo"

# Adicionar o repositório remoto (substitua SEU-USUARIO pelo seu username)
git remote add origin https://github.com/SEU-USUARIO/uplift-website.git

# Renomear branch para main (padrão do GitHub)
git branch -M main

# Enviar para o GitHub
git push -u origin main
```

**Importante**: Substitua `SEU-USUARIO` pelo seu nome de usuário do GitHub!

### 2. Subir os Arquivos (Método 2: Via Interface Web)

Se preferir não usar o terminal:

1. No repositório criado, clique em **uploading an existing file**
2. Arraste todos os arquivos e pastas do site
3. Escreva uma mensagem de commit: "Primeiro commit: Site Uplift"
4. Clique em **Commit changes**

### 3. Ativar GitHub Pages

1. No seu repositório, clique em **Settings** (⚙️ no menu superior)
2. No menu lateral esquerdo, clique em **Pages**
3. Em **Source**, selecione:
   - Branch: **main**
   - Folder: **/ (root)**
4. Clique em **Save**
5. Aguarde alguns segundos e atualize a página

### 4. Acessar Seu Site

Após alguns minutos, seu site estará disponível em:

```
https://SEU-USUARIO.github.io/uplift-website/
```

Substitua `SEU-USUARIO` pelo seu nome de usuário do GitHub.

## Atualizando o Site

Sempre que fizer alterações nos arquivos:

```bash
# Adicionar arquivos modificados
git add .

# Fazer commit com descrição da mudança
git commit -m "✨ Atualização: descrição do que mudou"

# Enviar para GitHub
git push
```

O GitHub Pages irá atualizar automaticamente em poucos minutos!

## Configurar Domínio Próprio (Opcional)

Se você tiver um domínio (exemplo: uplift.com.br):

1. No GitHub Pages (Settings > Pages)
2. Em **Custom domain**, digite seu domínio
3. Configure os DNS do seu domínio:
   - Tipo: `CNAME`
   - Nome: `@` ou `www`
   - Valor: `SEU-USUARIO.github.io`

## Comandos Git Úteis

```bash
# Ver status dos arquivos
git status

# Ver histórico de commits
git log --oneline

# Desfazer mudanças não commitadas
git restore arquivo.html

# Ver diferenças
git diff
```

## Problemas Comuns

### Site não aparece

- Aguarde 5-10 minutos após o primeiro deploy
- Verifique se o repositório está público
- Certifique-se de que o GitHub Pages está ativado em Settings

### Erro ao fazer push

Se pedir autenticação:
1. Use Personal Access Token em vez de senha
2. Gere em: Settings > Developer settings > Personal access tokens
3. Dê permissão: `repo` (acesso completo aos repositórios)

### Mudanças não aparecem

- Limpe o cache do navegador (Ctrl + Shift + R)
- Aguarde alguns minutos para propagação
- Verifique se o commit foi feito: `git log`

## Links Úteis

- [Documentação GitHub Pages](https://pages.github.com/)
- [Guia Git Básico](https://git-scm.com/doc)
- [GitHub Desktop](https://desktop.github.com/) (interface gráfica para Git)

---

## Resumo Rápido

```bash
cd /home/Julio/uplift-website
git init
git add .
git commit -m "🚀 Site Uplift completo"
git remote add origin https://github.com/SEU-USUARIO/uplift-website.git
git branch -M main
git push -u origin main
```

Depois ative o GitHub Pages em: **Settings > Pages > Source: main**

Pronto! Seu site estará em: `https://SEU-USUARIO.github.io/uplift-website/`
