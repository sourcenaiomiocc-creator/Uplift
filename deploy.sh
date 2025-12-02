#!/bin/bash

# Script de Deploy para GitHub Pages
# Site Uplift

echo "🚀 Deploy do Site Uplift para GitHub Pages"
echo ""

# Verificar se Git está instalado
if ! command -v git &> /dev/null; then
    echo "❌ Git não está instalado!"
    echo "Instale em: https://git-scm.com"
    exit 1
fi

# Verificar se já foi inicializado
if [ ! -d ".git" ]; then
    echo "📦 Inicializando repositório Git..."
    git init

    echo ""
    echo "Digite seu nome de usuário do GitHub:"
    read GITHUB_USER

    echo ""
    echo "Digite o nome do repositório (padrão: uplift-website):"
    read REPO_NAME
    REPO_NAME=${REPO_NAME:-uplift-website}

    git remote add origin "https://github.com/$GITHUB_USER/$REPO_NAME.git"
    git branch -M main

    echo ""
    echo "✅ Repositório configurado!"
    echo "URL: https://github.com/$GITHUB_USER/$REPO_NAME"
    echo ""
fi

# Adicionar arquivos
echo "📝 Adicionando arquivos..."
git add .

# Verificar se há mudanças
if git diff-index --quiet HEAD --; then
    echo "ℹ️  Nenhuma mudança para commit"
    exit 0
fi

# Mensagem de commit
echo ""
echo "Digite a mensagem do commit (ou deixe vazio para usar padrão):"
read COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="✨ Atualização do site - $(date '+%d/%m/%Y %H:%M')"
fi

# Fazer commit
echo ""
echo "💾 Criando commit..."
git commit -m "$COMMIT_MSG"

# Enviar para GitHub
echo ""
echo "📤 Enviando para GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deploy realizado com sucesso!"
    echo ""
    echo "🌐 Seu site estará disponível em alguns minutos em:"

    # Tentar extrair o usuário da URL remota
    REMOTE_URL=$(git config --get remote.origin.url)
    if [[ $REMOTE_URL =~ github\.com[:/]([^/]+)/([^/.]+) ]]; then
        USER="${BASH_REMATCH[1]}"
        REPO="${BASH_REMATCH[2]}"
        echo "   https://$USER.github.io/$REPO/"
    fi
    echo ""
    echo "📋 Não esqueça de ativar o GitHub Pages em:"
    echo "   Settings > Pages > Source: main"
else
    echo ""
    echo "❌ Erro ao enviar para GitHub"
    echo ""
    echo "Possíveis soluções:"
    echo "1. Verifique sua autenticação no GitHub"
    echo "2. Use Personal Access Token em vez de senha"
    echo "3. Verifique se o repositório existe"
    echo ""
    echo "Para mais ajuda, leia: DEPLOY-GITHUB-PAGES.md"
fi
