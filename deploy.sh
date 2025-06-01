#!/bin/bash

echo "🚀 Iniciando o deploy..."

# Navegar até a pasta da aplicação (caso esteja em outro lugar)
cd "$(dirname "$0")"

# Build e up com Docker Compose
docker compose down
docker compose up --build -d

echo "✅ Deploy finalizado com sucesso!"
