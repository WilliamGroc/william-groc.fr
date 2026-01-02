# Stage 1: Build
FROM node:20-alpine AS builder

WORKDIR /app

# Copier les fichiers de dépendances
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./

# Installer pnpm
RUN npm install -g pnpm

# Installer les dépendances
RUN pnpm install --frozen-lockfile

# Copier le code source
COPY . .

# Builder l'application
RUN pnpm build

# Afficher ce qui a été généré
RUN echo "=== Contenu de /app/build ===" && ls -la /app/build/

# Stage 2: Runtime
FROM nginx:alpine

# Supprimer l'index.html par défaut de nginx
RUN rm -f /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html

# Copier la configuration nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers buildés statiques
COPY --from=builder /app/build /usr/share/nginx/html

# Diagnostics
RUN echo "=== Contenu de /usr/share/nginx/html ===" && ls -la /usr/share/nginx/html/ && echo "=== Fichiers HTML ===" && find /usr/share/nginx/html -name "*.html" -type f

# Exposer le port
EXPOSE 80

# Commande de démarrage
CMD ["nginx", "-g", "daemon off;"]
