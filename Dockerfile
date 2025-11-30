FROM node:20-alpine

WORKDIR /app

# Eğer package.json kullanacaksan önce onu kopyala
COPY package*.json . 2>/dev/null || true
RUN [ -f package.json ] && npm install || echo "no package.json, skipping"

# Tüm repo içeriğini kopyala
COPY . .

EXPOSE 8000
CMD ["node", "server.js"]
