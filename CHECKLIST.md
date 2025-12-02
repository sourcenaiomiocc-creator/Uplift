# ✅ Checklist - Antes de Fazer Deploy

Use este checklist para garantir que tudo está pronto antes de publicar o site!

## ✅ Configurações Obrigatórias

- [x] **Link do APK**: Já configurado com o GitHub Releases
  - Link: https://github.com/sourcenaiomiocc-creator/Uplift/releases/download/Uplift/Uplift.apk
  - ✅ Funcionando!

## 📝 Configurações Opcionais (Recomendadas)

### Informações de Contato

Edite `contact.html` e adicione suas informações reais:

- [ ] **Email de contato** (linha ~50)
  - Atual: `contato@uplift.app`
  - Trocar para seu email real

- [ ] **Redes sociais** (linha ~58)
  - Atual: `@upliftapp`
  - Trocar para suas redes sociais (Instagram, Twitter, etc)

- [ ] **Email para bugs** (linha ~66)
  - Atual: `bugs@uplift.app`
  - Trocar para seu email real

### Personalização de Cores (Opcional)

Se quiser mudar as cores do site, edite `css/style.css` (linhas 9-20):

- [ ] Alterar cor principal (atual: laranja #FF6B35)
- [ ] Alterar cor secundária (atual: amarelo #F7931E)

### Adicionar Imagens (Opcional)

- [ ] Adicionar logo do Uplift na raiz
- [ ] Adicionar screenshots do app
- [ ] Atualizar HTML para usar as imagens

## 🧪 Testes Antes de Publicar

- [ ] **Abrir `index.html` no navegador**
  - Verificar se tudo está carregando corretamente

- [ ] **Testar menu mobile**
  - Reduzir janela do navegador
  - Clicar no menu hamburguer
  - Verificar se o menu abre e fecha

- [ ] **Testar todas as páginas**
  - [x] Início (index.html)
  - [x] Sobre (about.html)
  - [x] Recursos (features.html)
  - [x] Download (download.html)
  - [x] Contato (contact.html)

- [ ] **Testar botão de download**
  - Clicar em "Baixar APK"
  - Verificar se o download inicia

- [ ] **Testar links internos**
  - Verificar se todos os links entre páginas funcionam

- [ ] **Testar responsividade**
  - Abrir no celular ou usar Chrome DevTools (F12)
  - Testar em vários tamanhos de tela

## 🚀 Deploy no GitHub Pages

- [ ] Criar conta no GitHub (se não tiver)
- [ ] Criar repositório `uplift-website`
- [ ] Executar `./deploy.sh` ou seguir `DEPLOY-GITHUB-PAGES.md`
- [ ] Ativar GitHub Pages em Settings > Pages
- [ ] Aguardar 5-10 minutos
- [ ] Acessar `https://seu-usuario.github.io/uplift-website/`

## ✨ Depois do Deploy

- [ ] **Testar o site online**
  - Abrir em diferentes navegadores
  - Testar no celular

- [ ] **Compartilhar o link**
  - Adicionar no README do repositório do app
  - Compartilhar nas redes sociais

- [ ] **Configurar Google Analytics** (opcional)
  - Ver seção no README.md

- [ ] **Configurar domínio próprio** (opcional)
  - Ex: uplift.com.br
  - Ver instruções em DEPLOY-GITHUB-PAGES.md

## 📊 Melhorias Futuras (Opcional)

- [ ] Adicionar seção de depoimentos de usuários
- [ ] Criar blog com dicas motivacionais
- [ ] Adicionar vídeo demonstrativo do app
- [ ] Implementar analytics para ver quantas visitas
- [ ] Traduzir para inglês
- [ ] Adicionar FAQ com mais perguntas
- [ ] Criar página de changelog (versões do app)

## 🆘 Precisa de Ajuda?

- Leia: `README.md` - Documentação completa
- Leia: `DEPLOY-GITHUB-PAGES.md` - Deploy detalhado
- GitHub Pages não funciona? Aguarde 10 minutos e limpe o cache
- Problemas com Git? Use GitHub Desktop (interface gráfica)

---

**Dica**: Não precisa fazer tudo de uma vez! O essencial é:
1. ✅ Link do APK (já feito!)
2. 🚀 Deploy no GitHub Pages
3. 🧪 Testar o site online

O resto você pode fazer depois, conforme necessário.

Boa sorte! 🚀✨
