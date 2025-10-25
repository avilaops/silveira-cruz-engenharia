# Silveira Cruz Engenharia - Website

## Descrição
Website profissional desenvolvido para a Silveira Cruz Engenharia, empresa líder em engenharia civil. O site apresenta um design moderno e elegante com paleta de cores em tons de azul, branco e prata, refletindo a qualidade premium dos serviços prestados.

## Características
- **Design Responsivo**: Adaptável a todos os dispositivos (desktop, tablet, mobile)
- **Paleta de Cores Premium**: Tons de azul, branco e prata
- **Performance Otimizada**: Carregamento rápido e animações suaves
- **SEO Friendly**: Estrutura otimizada para mecanismos de busca
- **Acessibilidade**: Seguindo as melhores práticas de acessibilidade web

## Estrutura de Arquivos
```
/
├── index.html          # Página principal
├── styles.css          # Estilos CSS
├── script.js           # JavaScript
├── favicon.ico         # Ícone do site
├── logo.png            # Logo principal
├── logo branco.png     # Logo para fundo escuro
├── logo - Copia.png    # Logo alternativo
└── README.md           # Este arquivo
```

## Serviços Apresentados
1. **Projetos Arquitetônicos** - Desenvolvimento de projetos personalizados
2. **Desdobro** - Desdobro de terrenos e regularização
3. **Estrutural** - Projetos estruturais seguros e eficientes
4. **Hidrossanitária** - Sistemas hidráulicos e sanitários completos
5. **Orçamento** - Orçamentos detalhados e precisos
6. **Regularização** - Regularização de obras e documentação
7. **Administração de Obras** - Gestão completa de obras
8. **Perícia e Laudos** - Perícias técnicas especializadas

## Informações de Contato
- **Endereço**: Rua Bahia, 4822, Votuporanga - SP, CEP: 15500-005
- **Telefone**: (17) 3423-2229
- **WhatsApp**: +55 17 98152-2900
- **Instagram**: @silveiracruzengenharia
- **Domínio**: engenharia.avila.inc

## Tecnologias Utilizadas
- **HTML5**: Estrutura semântica moderna
- **CSS3**: Estilos avançados com gradientes, animações e flexbox/grid
- **JavaScript ES6+**: Interatividade e animações
- **Font Awesome**: Ícones profissionais
- **Google Fonts**: Tipografia premium (Inter + Playfair Display)

## Funcionalidades
- ✅ Navegação suave entre seções
- ✅ Menu responsivo para dispositivos móveis
- ✅ Animações de entrada para elementos
- ✅ Efeitos de hover interativos
- ✅ Botões de contato direto (WhatsApp, telefone, Instagram)
- ✅ Design otimizado para conversão
- ✅ Header fixo com efeito blur
- ✅ Seções bem estruturadas e organizadas

## Deployment no Cloudflare

### Opção 1: Deploy Automático via GitHub (Recomendado)
1. Acesse [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. Vá para **Pages** → **Create a project**
3. Selecione **Connect to Git**
4. Escolha **GitHub** e conecte o repositório: `avilaops/silveira-cruz-engenharia`
5. Configure:
   - **Project name**: `silveira-cruz-engenharia`
   - **Production branch**: `main`
   - **Build command**: (deixe vazio)
   - **Build output directory**: (deixe vazio - usar raiz)
6. Clique em **Save and Deploy**

### Opção 2: Deploy Manual via Wrangler CLI
```bash
# Instalar Wrangler CLI (se não estiver instalado)
npm install -g wrangler

# Fazer login no Cloudflare
wrangler login

# Deploy do projeto
wrangler pages deploy . --project-name silveira-cruz-engenharia
```

### Configuração do Domínio Personalizado
1. No painel do Cloudflare Pages, vá para o projeto criado
2. Clique em **Custom domains**
3. Adicione o domínio: `engenharia.avila.inc`
4. Configure os registros DNS automaticamente (se o domínio estiver no Cloudflare)

### URLs de Acesso
- **GitHub Pages**: https://avilaops.github.io/silveira-cruz-engenharia/
- **Cloudflare Pages**: https://silveira-cruz-engenharia.pages.dev/
- **Domínio Personalizado**: https://engenharia.avila.inc (após configuração)

## Otimizações de Performance
- Imagens otimizadas e comprimidas
- CSS e JavaScript minificados (em produção)
- Carregamento assíncrono de recursos externos
- Lazy loading para imagens
- Preload de recursos críticos

## Manutenção
- **Backup Regular**: Mantenha backups dos arquivos
- **Atualizações**: Verifique atualizações das dependências
- **Monitoramento**: Use ferramentas como Google Analytics (configurar)
- **SEO**: Monitore ranking e performance com Google Search Console

## Melhorias Futuras (Opcionais)
- [ ] Formulário de contato integrado
- [ ] Galeria de projetos realizados
- [ ] Blog/notícias da empresa
- [ ] Sistema de depoimentos de clientes
- [ ] Chat ao vivo
- [ ] Múltiplos idiomas
- [ ] PWA (Progressive Web App)

## Suporte
Para alterações ou atualizações no site, entre em contato com a equipe de desenvolvimento.

---

**Desenvolvido com excelência para resultados excepcionais.**
*© 2024 Silveira Cruz Engenharia - Todos os direitos reservados.*