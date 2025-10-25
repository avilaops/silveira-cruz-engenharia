# 🌐 Configuração do Domínio engenharia.avila.inc

## 📋 Passos para Deploy no Cloudflare Pages

### Método 1: Via Dashboard Cloudflare (Recomendado)

1. **Acesse o Cloudflare Dashboard**
   - URL: https://dash.cloudflare.com/
   - Faça login na conta

2. **Criar Projeto Pages**
   - Vá para **Pages** no menu lateral
   - Clique em **Create a project**
   - Selecione **Connect to Git**

3. **Conectar Repositório GitHub**
   - Escolha **GitHub**
   - Selecione o repositório: `avilaops/silveira-cruz-engenharia`
   - Branch: `main`

4. **Configurar Build**
   - **Project name**: `silveira-cruz-engenharia`
   - **Production branch**: `main`
   - **Build command**: (deixar vazio)
   - **Build output directory**: `/` (raiz)

5. **Deploy**
   - Clique em **Save and Deploy**
   - Aguarde o build completar

6. **Configurar Domínio Personalizado**
   - Após o deploy, vá para o projeto criado
   - Clique em **Custom domains**
   - Clique em **Set up a custom domain**
   - Digite: `engenharia.avila.inc`
   - Clique em **Continue**
   - O Cloudflare criará automaticamente os registros DNS

### Método 2: Via Wrangler CLI (Quando permissões estiverem disponíveis)

```bash
# 1. Criar projeto
wrangler pages project create silveira-cruz-engenharia

# 2. Deploy
wrangler pages deploy . --project-name silveira-cruz-engenharia

# 3. Configurar domínio personalizado
wrangler pages domain add engenharia.avila.inc --project-name silveira-cruz-engenharia
```

## 🔧 Configuração DNS Manual (Se necessário)

Se a configuração automática não funcionar, criar manualmente:

### Registro CNAME
- **Nome**: `engenharia`
- **Destino**: `silveira-cruz-engenharia.pages.dev`
- **TTL**: Auto
- **Proxy Status**: Proxied (nuvem laranja)

### Comandos API (Opcional)
```bash
# Zone ID do avila.inc: 66d034e908fb84f288b8dcce83059e39

# Criar registro CNAME
curl -X POST "https://api.cloudflare.com/client/v4/zones/66d034e908fb84f288b8dcce83059e39/dns_records" \
  -H "Authorization: Bearer $CLOUDFLARE_API_TOKEN" \
  -H "Content-Type: application/json" \
  --data '{"type":"CNAME","name":"engenharia","content":"silveira-cruz-engenharia.pages.dev","proxied":true}'
```

## 📱 URLs Finais

- **GitHub Pages (temporário)**: https://avilaops.github.io/silveira-cruz-engenharia/
- **Cloudflare Pages**: https://silveira-cruz-engenharia.pages.dev/
- **Domínio Final**: https://engenharia.avila.inc

## ✅ Verificação

Após configuração, verificar:
1. Site acessível em `https://engenharia.avila.inc`
2. SSL/TLS funcionando (HTTPS)
3. Redirects automáticos funcionando
4. Performance otimizada pelo Cloudflare

## 🚀 Deploy Automático

Após configuração inicial:
- Qualquer push para a branch `main` no GitHub
- Deploy automático no Cloudflare Pages
- Site atualizado em `https://engenharia.avila.inc`

---

**Status Atual**: GitHub Pages ativo em https://avilaops.github.io/silveira-cruz-engenharia/
**Próximo Passo**: Configurar Cloudflare Pages para `engenharia.avila.inc`