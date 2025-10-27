# Guia de Solução de Problemas de Deploy
## Silveira Cruz Engenharia

Este guia ajuda a identificar e resolver problemas comuns de deploy.

---

## 📖 Índice
1. [Problemas GitHub Pages](#problemas-github-pages)
2. [Problemas Cloudflare](#problemas-cloudflare)
3. [Problemas de Script](#problemas-de-script)
4. [Problemas de Domínio](#problemas-de-domínio)
5. [Como Verificar Logs](#como-verificar-logs)

---

## 🔍 Problemas GitHub Pages

### Deploy Falhando
**Sintomas:** Build do GitHub Pages falha ou não completa

**Soluções:**
1. Verificar se o arquivo `index.html` está na raiz do repositório
2. Verificar se todos os arquivos necessários estão commitados
3. Verificar se há erros de sintaxe no HTML/CSS/JS
4. Verificar nas Settings > Pages se está configurado para branch `main`

**Como Verificar:**
```bash
# Verificar status do último deploy
# Acessar: https://github.com/avilaops/silveira-cruz-engenharia/actions
```

### Site Não Carrega
**Sintomas:** Erro 404 ou página em branco

**Soluções:**
1. Verificar se GitHub Pages está habilitado em Settings > Pages
2. Aguardar alguns minutos para propagação
3. Limpar cache do navegador (Ctrl+Shift+R)
4. Verificar se o CNAME está correto

**URLs para Verificar:**
- GitHub Pages: https://avilaops.github.io/silveira-cruz-engenharia/
- Domínio Custom: https://engenharia.avila.inc

---

## ☁️ Problemas Cloudflare

### Deploy Manual Não Funciona
**Sintomas:** Erro ao fazer deploy manual no Cloudflare Pages

**Soluções:**
1. Verificar se a conta Cloudflare tem permissões necessárias
2. Verificar se o token de API está válido
3. Verificar se o projeto está conectado ao GitHub corretamente

**Passos para Deploy Manual:**
1. Acessar https://dash.cloudflare.com/
2. Ir para "Pages"
3. Clicar em "Create a project"
4. Conectar com GitHub
5. Selecionar `avilaops/silveira-cruz-engenharia`
6. Configurar:
   - Build command: (deixar vazio para site estático)
   - Build output directory: `/` ou `.`
   - Root directory: (deixar vazio)

### DNS Não Resolve
**Sintomas:** Domínio não aponta para o site

**Soluções:**
1. Verificar registros DNS no Cloudflare:
   ```
   Tipo: CNAME
   Nome: engenharia (ou @)
   Destino: avilaops.github.io
   ```

2. Verificar se o Proxy está ativado (ícone laranja)

3. Aguardar propagação DNS (até 24-48 horas, geralmente minutos)

**Como Verificar DNS:**
```bash
# No terminal
nslookup engenharia.avila.inc

# Ou
dig engenharia.avila.inc
```

### Erro: "Invalid Configuration"
**Sintomas:** Cloudflare retorna erro de configuração inválida

**Soluções:**
1. Verificar `wrangler.toml`:
   ```toml
   name = "silveira-cruz-engenharia"
   compatibility_date = "2024-10-25"
   pages_build_output_dir = "."
   ```

2. Verificar se o diretório de output está correto
3. Verificar se não há caracteres especiais no nome

---

## 🛠️ Problemas de Script

### deploy.sh Não Executa
**Sintomas:** Erro ao executar `./deploy.sh`

**Soluções:**
1. Dar permissão de execução:
   ```bash
   chmod +x deploy.sh
   ```

2. Executar com bash:
   ```bash
   bash deploy.sh
   ```

3. Verificar se está no diretório correto:
   ```bash
   ls -la | grep index.html
   # Deve mostrar index.html
   ```

### Erro: "index.html não encontrado"
**Sintomas:** Script não encontra index.html

**Solução:**
```bash
# Verificar se está na pasta correta
pwd
# Deve mostrar: .../silveira-cruz-engenharia

# Listar arquivos
ls -la
# Deve mostrar index.html
```

### Erro de Git Push
**Sintomas:** Erro ao fazer push para o GitHub

**Soluções:**
1. Verificar se está autenticado:
   ```bash
   git remote -v
   ```

2. Verificar se tem permissões:
   ```bash
   git config --list | grep user
   ```

3. Fazer push manualmente:
   ```bash
   git add .
   git commit -m "Sua mensagem"
   git push origin main
   ```

---

## 🌐 Problemas de Domínio

### CNAME Não Funciona
**Sintomas:** Domínio customizado não carrega

**Soluções:**
1. Verificar conteúdo do arquivo CNAME:
   ```bash
   cat CNAME
   # Deve mostrar: engenharia.avila.inc
   ```

2. Verificar se o arquivo está na raiz do repositório

3. Verificar configuração no GitHub:
   - Settings > Pages > Custom domain
   - Deve mostrar: engenharia.avila.inc

### SSL/HTTPS Não Funciona
**Sintomas:** Aviso de site inseguro

**Soluções:**
1. Aguardar provisão do certificado (pode levar algumas horas)
2. Verificar se "Enforce HTTPS" está marcado em Settings > Pages
3. Se usar Cloudflare, verificar se SSL está em "Full" ou "Full (strict)"

---

## 📊 Como Verificar Logs

### Logs GitHub Actions
1. Acessar: https://github.com/avilaops/silveira-cruz-engenharia/actions
2. Clicar no workflow mais recente
3. Expandir cada step para ver detalhes
4. Procurar por linhas com ❌ ou "Error"

### Logs do Navegador
```javascript
// Abrir Console (F12)
// Verificar erros em vermelho
// Verificar Network tab para arquivos não carregados
```

### Verificar Status do Site
```bash
# Verificar se o site está online
curl -I https://avilaops.github.io/silveira-cruz-engenharia/

# Verificar se retorna 200 OK
```

---

## 🆘 Checklist de Troubleshooting

Antes de reportar um problema, verificar:

- [ ] ✅ Git status está limpo (sem mudanças não commitadas)
- [ ] ✅ Último commit foi pushed para o GitHub
- [ ] ✅ GitHub Actions está verde (sem erros)
- [ ] ✅ index.html existe na raiz
- [ ] ✅ Arquivos CSS/JS estão carregando (verificar Network no F12)
- [ ] ✅ Não há erros no Console do navegador (F12)
- [ ] ✅ CNAME está configurado corretamente
- [ ] ✅ Cache do navegador foi limpo (Ctrl+Shift+R)
- [ ] ✅ Aguardou pelo menos 5 minutos após o deploy

---

## 📞 Onde Obter Ajuda

### GitHub Issues
- Issues do repositório: https://github.com/avilaops/silveira-cruz-engenharia/issues
- Criar novo issue com detalhes do problema

### Documentação Oficial
- GitHub Pages: https://docs.github.com/pages
- Cloudflare Pages: https://developers.cloudflare.com/pages/

### Logs e Monitoramento
- GitHub Actions: https://github.com/avilaops/silveira-cruz-engenharia/actions
- Cloudflare Dashboard: https://dash.cloudflare.com/

---

## 🔧 Comandos Úteis

### Verificar Status
```bash
# Status do git
git status

# Último commit
git log -1 --oneline

# Branches
git branch -a

# Remotes
git remote -v
```

### Forçar Novo Deploy
```bash
# Fazer commit vazio para forçar novo deploy
git commit --allow-empty -m "Trigger deploy"
git push origin main
```

### Limpar e Reinstalar
```bash
# Se necessário limpar cache
rm -rf .git/index.lock

# Recarregar repositório
git fetch --all
git reset --hard origin/main
```

---

**Última Atualização:** 27/10/2025  
**Mantido por:** Equipe Avila.inc
