# 🚗 Tropical Mecânica - App Android

Calculadora de preços da Tropical Mecânica convertida para app Android usando Capacitor.

## 📱 Sobre

Este projeto converte a calculadora web da Tropical Mecânica em um app Android nativo usando **Capacitor** (tecnologia moderna da Ionic). O APK é compilado automaticamente via **GitHub Actions**.

## 🚀 Como usar

### Opção 1: Baixar APK pronto (Mais fácil)
1. Vá na aba **Actions** deste repositório
2. Clique no workflow mais recente ✅
3. Baixe o arquivo `tropical-mecanica-apk` (debug) ou `tropical-mecanica-release-apk`
4. Instale no Android

### Opção 2: Build local

#### Pré-requisitos
- [Node.js](https://nodejs.org/) (v18+)
- [Android Studio](https://developer.android.com/studio)
- Java JDK 17

#### Passos
```bash
# 1. Clone o repositório
git clone https://github.com/SEU_USUARIO/tropical-mecanica-app.git
cd tropical-mecanica-app

# 2. Instale dependências
npm install

# 3. Adicione a plataforma Android
npx cap add android

# 4. Sincronize arquivos
npx cap sync android

# 5. Abra no Android Studio
npx cap open android

# 6. No Android Studio, clique em "Build" → "Build Bundle(s) / APK(s)" → "Build APK(s)"
```

## 📁 Estrutura do Projeto

```
tropical-mecanica-app/
├── .github/workflows/build-apk.yml   # CI/CD - compila APK automaticamente
├── capacitor.config.ts               # Configuração do Capacitor
├── package.json                      # Dependências Node.js
├── index.html                        # Seu app (CalculadoraTM2026.html)
└── android/                          # Projeto Android (gerado automaticamente)
```

## ⚙️ Configurações

### Alterar nome do app
Edite `capacitor.config.ts`:
```typescript
appName: 'Tropical Mecânica',  // ← mude aqui
appId: 'com.tropicalmecanica.calculadora',  // ← ID único do app
```

### Alterar ícone do app
1. Coloque seus ícones em `android/app/src/main/res/`
2. Ou use o gerador: https://icon.kitchen/

### Assinar APK para Play Store
Para publicar na Google Play Store, você precisa assinar o APK:

```bash
cd android
./gradlew assembleRelease
```

Depois assine com sua keystore:
```bash
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1   -keystore minha-keystore.jks   app/build/outputs/apk/release/app-release-unsigned.apk   alias_name
```

## 🔄 Atualizar o app

Quando quiser atualizar os preços:
1. Edite o `index.html`
2. Faça commit e push para o GitHub
3. O GitHub Actions compilará o novo APK automaticamente!

## 🛠 Tecnologias

- [Capacitor](https://capacitorjs.com/) - Framework para apps híbridos
- [GitHub Actions](https://github.com/features/actions) - CI/CD
- HTML5 + CSS3 + JavaScript vanilla

## 📄 Licença

Projeto privado - Tropical Mecânica.
