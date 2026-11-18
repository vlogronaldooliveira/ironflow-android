# IronFlow — MVP inicial para Android

Protótipo em React + TypeScript + Vite, preparado para Android com Capacitor.

## Recursos demonstrativos
- Abas Treino, Exercícios, Progresso e Perfil.
- Treinos A, B e C com marcação de exercícios concluídos.
- Cronômetro de descanso.
- Peso e exercícios salvos localmente no aparelho via localStorage.

## Desenvolvimento
```bash
npm install
npm run dev
```

## APK pelo GitHub Actions
A automação em `.github/workflows/android-apk.yml` compila o APK de teste após push na branch `main`. Consulte a aba Actions e baixe o artefato `ironflow-android-apk`.

## Limitações
Este é um MVP demonstrativo: não possui login, nuvem, IA, pagamentos ou conteúdo de treino validado individualmente. O APK é debug, não assinado para distribuição comercial.