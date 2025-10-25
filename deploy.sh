#!/bin/bash

# Deploy Script para Silveira Cruz Engenharia
# Atualiza tanto GitHub quanto prepara para Cloudflare

echo "🚀 Iniciando deploy da Silveira Cruz Engenharia..."

# Verificar se estamos na pasta correta
if [ ! -f "index.html" ]; then
    echo "❌ Erro: index.html não encontrado. Execute este script na pasta do projeto."
    exit 1
fi

# Git add, commit e push
echo "📦 Adicionando arquivos ao Git..."
git add .

echo "💬 Fazendo commit..."
read -p "Digite a mensagem do commit (ou pressione Enter para usar mensagem padrão): " commit_message
if [ -z "$commit_message" ]; then
    commit_message="Update: $(date +'%Y-%m-%d %H:%M:%S')"
fi

git commit -m "$commit_message"

echo "⬆️ Enviando para GitHub..."
git push origin main

echo "✅ Deploy para GitHub concluído!"
echo "🌐 Site disponível em: https://avilaops.github.io/silveira-cruz-engenharia/"
echo ""
echo "📋 Para deploy no Cloudflare:"
echo "1. Acesse https://dash.cloudflare.com/"
echo "2. Vá para Pages > Create a project"
echo "3. Conecte com GitHub: avilaops/silveira-cruz-engenharia"
echo "4. Configure o domínio personalizado: engenharia.avila.inc"
echo "5. O site será automaticamente deployado!"
echo ""
echo "🎉 Deploy concluído com sucesso!"