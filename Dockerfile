FROM node:12     
WORKDIR /usr/src/
COPY package*.json ./
RUN npm install
COPY . .
ENV BACKEND_URL="backend-service:3000"
ENV PORT=3030
EXPOSE $PORT
CMD ["node","server.js"]