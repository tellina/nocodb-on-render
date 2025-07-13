FROM node:18

WORKDIR /app

# Installa pnpm globalmente
RUN npm install -g pnpm

# Setup pnpm per creare la cartella globale bin e aggiorna PATH
RUN pnpm setup

# Installa nocodb globalmente con pnpm
RUN pnpm add -g nocodb

EXPOSE 10000

CMD ["nocodb"]

