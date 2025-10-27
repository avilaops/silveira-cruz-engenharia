# 🏗️ Silveira Cruz Engenharia - Website Oficial

Website profissional da Silveira Cruz Engenharia - Excelência em Construção Civil.

[![Deploy Status](https://img.shields.io/badge/deploy-success-brightgreen)](https://avilaops.github.io/silveira-cruz-engenharia/)
[![GitHub Pages](https://img.shields.io/badge/hosted-GitHub%20Pages-blue)](https://pages.github.com/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

---

## 🌐 Links

- **Site Produção:** https://avilaops.github.io/silveira-cruz-engenharia/
- **Domínio Customizado:** https://engenharia.avila.inc
- **GitHub Actions:** [Ver Workflows](https://github.com/avilaops/silveira-cruz-engenharia/actions)

---

## 📊 Status de Deploy

**Status Atual:** ✅ **ONLINE E FUNCIONANDO**

Para verificar o status detalhado de deploy, consulte:
- [📈 Status Rápido](./DEPLOY_STATUS.md) - Visão geral e métricas
- [📋 Verificação Completa](./DEPLOY_VERIFICATION.md) - Relatório detalhado
- [🔧 Troubleshooting](./TROUBLESHOOTING.md) - Guia de solução de problemas

---

## 🚀 Como Fazer Deploy

### Deploy Automático (Recomendado)

O site é automaticamente deployado via GitHub Actions quando há push na branch `main`:

```bash
git add .
git commit -m "Sua mensagem de commit"
git push origin main
```

Aguarde ~1 minuto e o site será atualizado automaticamente.

### Deploy Manual via Script

```bash
# Dar permissão de execução (primeira vez)
chmod +x deploy.sh

# Executar script
./deploy.sh
```

O script irá:
1. ✅ Validar presença do `index.html`
2. ✅ Fazer git add de todos os arquivos
3. ✅ Solicitar mensagem de commit
4. ✅ Fazer commit e push para GitHub
5. ✅ Exibir instruções para Cloudflare (opcional)

---

## 📁 Estrutura do Projeto

```
silveira-cruz-engenharia/
├── index.html              # Página principal
├── styles.css              # Estilos CSS
├── script.js               # JavaScript
├── favicon.ico             # Ícone do site
├── logo branco.png         # Logo da empresa
├── manifest.json           # PWA manifest
├── robots.txt              # SEO robots
├── CNAME                   # Domínio customizado
├── _headers                # Headers de segurança
├── _redirects              # Redirecionamentos
├── deploy.sh               # Script de deploy
├── wrangler.toml           # Config Cloudflare Pages
├── README.md               # Este arquivo
├── DEPLOY_STATUS.md        # Status de deploy
├── DEPLOY_VERIFICATION.md  # Relatório de verificação
└── TROUBLESHOOTING.md      # Guia de solução de problemas
```

---

## 🛠️ Tecnologias

- **Frontend:** HTML5, CSS3, JavaScript (Vanilla)
- **Hosting:** GitHub Pages
- **CI/CD:** GitHub Actions
- **CDN:** Cloudflare (opcional)
- **Domínio:** engenharia.avila.inc

---

## 🔧 Desenvolvimento Local

### Pré-requisitos
- Navegador web moderno
- Git instalado
- Editor de código (VS Code recomendado)

### Clonar o Repositório
```bash
git clone https://github.com/avilaops/silveira-cruz-engenharia.git
cd silveira-cruz-engenharia
```

### Abrir Localmente
Simplesmente abra o arquivo `index.html` em seu navegador:

```bash
# macOS
open index.html

# Linux
xdg-open index.html

# Windows
start index.html
```

Ou use um servidor local:

```bash
# Python 3
python -m http.server 8000

# Node.js (npx)
npx http-server

# PHP
php -S localhost:8000
```

Acesse: `http://localhost:8000`

---

## 🎨 Customização

### Cores
As cores principais estão definidas em `styles.css`:
```css
:root {
    --primary-color: #1a5490;
    --accent-color: #f39c12;
}
```

### Conteúdo
Edite o arquivo `index.html` para alterar:
- Textos e descrições
- Imagens e logos
- Links e contatos
- Seções e estrutura

### Estilos
Edite `styles.css` para customizar:
- Layout e responsividade
- Animações e transições
- Tipografia
- Cores e temas

---

## 🔒 Segurança

Headers de segurança configurados em `_headers`:
- ✅ Content Security Policy (CSP)
- ✅ X-Frame-Options
- ✅ X-Content-Type-Options
- ✅ Referrer-Policy
- ✅ Permissions-Policy

---

## 📈 SEO

- ✅ Meta tags otimizadas
- ✅ Open Graph tags (redes sociais)
- ✅ robots.txt configurado
- ✅ Sitemap pronto para geração
- ✅ URLs amigáveis
- ✅ Performance otimizada

---

## 🐛 Problemas?

Se encontrar problemas com deploy ou funcionamento do site:

1. 📖 Consulte o [Guia de Troubleshooting](./TROUBLESHOOTING.md)
2. 📊 Verifique o [Status de Deploy](./DEPLOY_STATUS.md)
3. 🔍 Consulte o [Relatório de Verificação](./DEPLOY_VERIFICATION.md)
4. 🐛 Abra uma [Issue no GitHub](https://github.com/avilaops/silveira-cruz-engenharia/issues)

---

## 📝 Changelog

### [1.0.0] - 2025-10-25
- ✨ Lançamento inicial do site
- ✅ Design responsivo implementado
- ✅ Configuração GitHub Pages
- ✅ Configuração Cloudflare
- ✅ Headers de segurança
- ✅ SEO otimizado

### [1.0.1] - 2025-10-25
- 🎨 Mudança de "Engenharia Civil" para "Construção Civil"
- 🎨 Melhorias no menu mobile com efeito glassmorphism
- ✨ Logo SVG moderno integrado

### [1.1.0] - 2025-10-27
- 📚 Documentação completa de deploy adicionada
- 📊 Sistema de verificação de deploy implementado
- 🔧 Guia de troubleshooting completo
- ✅ Scripts de deploy otimizados

---

## 👥 Contribuindo

Contribuições são bem-vindas! Por favor:

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

---

## 📞 Contato

**Silveira Cruz Engenharia**
- Website: https://engenharia.avila.inc
- Email: contato@silveiracruz.com.br (exemplo)
- Telefone: (00) 0000-0000 (exemplo)

**Desenvolvido por:**
- [Avila.inc](https://avila.inc)
- Email: contato@avilatransportes.com.br

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

---

## 🙏 Agradecimentos

- GitHub Pages por hosting gratuito
- Cloudflare por CDN e segurança
- Comunidade open source por ferramentas incríveis

---

**Última Atualização:** 27 de Outubro de 2025  
**Versão:** 1.1.0  
**Status:** ✅ Em Produção

---

<div align="center">
  <b>Feito com ❤️ pela equipe Avila.inc</b>
</div>
