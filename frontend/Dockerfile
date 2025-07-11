# frontend/Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY ./package*.json ./
RUN npm install

COPY . .

RUN npm run build

# Use 'serve' to serve the production build
RUN npm install -g serve
CMD ["serve", "-s", "dist", "-l", "3005"]

EXPOSE 3005