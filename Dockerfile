FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY . .

EXPOSE 8000 6969 9000 9000/udp

CMD ["node", "index.js"]
