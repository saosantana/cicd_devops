# Usa imagem oficial do Node.js
FROM node:18

# Cria diretório da aplicação
WORKDIR /app

# Copia dependências e instala
COPY package*.json ./
RUN npm install

# Copia todos os arquivos do projeto
COPY . .

# Expõe a porta usada pela aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
