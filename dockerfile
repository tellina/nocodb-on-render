FROM node:18

# Cartella di lavoro
WORKDIR /app

# Installa pnpm globalmente
RUN npm install -g pnpm

# Installa nocodb globalmente con pnpm
RUN pnpm add -g nocodb

# Esponi la porta 10000 (porta di default per Render)
EXPOSE 10000

# Comando per avviare NocoDB
CMD ["nocodb"]

