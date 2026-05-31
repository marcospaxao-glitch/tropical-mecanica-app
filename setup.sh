#!/bin/bash
# Script de setup rápido para build local

echo "🚗 Tropical Mecânica - Setup"
echo "=============================="

# Verificar Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Instale em https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js encontrado: $(node -v)"

# Instalar dependências
echo "📦 Instalando dependências..."
npm install

# Adicionar Android
echo "📱 Adicionando plataforma Android..."
npx cap add android

# Sync
echo "🔄 Sincronizando..."
npx cap sync android

echo ""
echo "✅ Setup completo!"
echo ""
echo "Para abrir no Android Studio, execute:"
echo "  npx cap open android"
echo ""
echo "Ou para build via linha de comando:"
echo "  cd android && ./gradlew assembleDebug"
