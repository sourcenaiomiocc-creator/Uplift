# Site Uplift

Site completo para o aplicativo Uplift - Um app de frases motivacionais diárias.

## Estrutura do Site

```
uplift-website/
├── index.html          # Página inicial
├── about.html          # Página sobre o app
├── features.html       # Página de recursos
├── download.html       # Página de download do APK
├── contact.html        # Página de contato
├── style.css           # Estilos do site
└── script.js           # Funcionalidades JavaScript
```

## Características

- Design moderno e responsivo
- Cores motivacionais (laranja, amarelo)
- 5 páginas completas
- Menu de navegação mobile
- Animações suaves
- Formulário de contato
- FAQ interativo
- 100% responsivo

## Como Usar

### 1. Adicionar o Link do APK

Abra o arquivo `download.html` e encontre esta linha (linha ~47):

```html
<a href="#" class="btn btn-download" id="downloadBtn">
```

Substitua o `#` pelo link do seu arquivo APK. Exemplo:

```html
<a href="https://drive.google.com/seu-arquivo-apk" class="btn btn-download" id="downloadBtn">
```

### 2. Adicionar Imagens (Opcional)

Se você tiver screenshots do app ou logo:

1. Coloque as imagens na raiz junto com os outros arquivos
2. Atualize os mockups nas páginas HTML

### 3. Personalizar Informações de Contato

Abra `contact.html` e atualize:

- Email de contato (linha ~50)
- Redes sociais (linha ~58)
- Email para bugs (linha ~66)

### 4. Testar Localmente

Basta abrir o arquivo `index.html` no seu navegador. Não precisa de servidor!

## Como Fazer Deploy (Hospedar o Site)

### Opção 1: GitHub Pages (Grátis) ⭐ RECOMENDADO

**Método Automático (Mais Fácil):**

Execute o script de deploy incluído:

```bash
cd /home/Julio/uplift-website
./deploy.sh
```

O script vai guiar você pelo processo!

**Método Manual:**

Veja instruções detalhadas no arquivo: **[DEPLOY-GITHUB-PAGES.md](DEPLOY-GITHUB-PAGES.md)**

Resumo rápido:
1. Crie uma conta no GitHub (se não tiver)
2. Crie um novo repositório chamado `uplift-website`
3. Execute os comandos Git (veja DEPLOY-GITHUB-PAGES.md)
4. Ative GitHub Pages em Settings > Pages
5. Seu site estará em: `https://seu-usuario.github.io/uplift-website`

### Opção 2: Netlify (Grátis)

1. Acesse [netlify.com](https://netlify.com)
2. Arraste a pasta `uplift-website` para o site
3. Pronto! Seu site está no ar

### Opção 3: Vercel (Grátis)

1. Acesse [vercel.com](https://vercel.com)
2. Faça login e clique em "New Project"
3. Faça upload da pasta ou conecte ao GitHub
4. Deploy automático!

### Opção 4: Firebase Hosting (Grátis)

1. Instale Firebase CLI: `npm install -g firebase-tools`
2. No terminal, dentro da pasta do site:
   ```bash
   firebase login
   firebase init hosting
   firebase deploy
   ```

## Personalizações Adicionais

### Mudar Cores

Abra `css/style.css` e edite as variáveis no início do arquivo (linhas 9-20):

```css
:root {
    --primary-color: #FF6B35;    /* Cor principal */
    --secondary-color: #F7931E;  /* Cor secundária */
    --accent-color: #FFC857;     /* Cor de destaque */
}
```

### Adicionar Google Analytics

Adicione antes do `</head>` em cada página HTML:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=SEU-ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'SEU-ID');
</script>
```

### Fazer o Formulário de Contato Funcionar

O formulário atual não envia emails. Para fazê-lo funcionar, você pode usar:

1. **FormSubmit** (mais fácil):
   - Vá em [formsubmit.co](https://formsubit.co)
   - Mude o `action` do form para: `https://formsubit.co/seu-email@exemplo.com`

2. **EmailJS**: [emailjs.com](https://emailjs.com)

3. **Backend próprio**: PHP, Node.js, etc.

## Requisitos

Nenhum! É HTML, CSS e JavaScript puro. Funciona em qualquer navegador moderno.

## Tecnologias Utilizadas

- HTML5
- CSS3 (Grid, Flexbox, Animations)
- JavaScript (ES6+)
- Google Fonts (Poppins)

## Suporte

Para dúvidas ou problemas:
- Edite o arquivo que você precisa modificar
- Teste abrindo o `index.html` no navegador
- Use as ferramentas de desenvolvedor do navegador (F12)

## Licença

Este site foi criado para o app Uplift. Todos os direitos reservados.

---

Desenvolvido com ❤️ para inspirar pessoas todos os dias!
