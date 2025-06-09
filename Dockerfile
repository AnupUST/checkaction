FROM node:22-alpine
WORKDIR /app
COPY . .
RUN npm install --force
COPY . .
RUN npm run build
EXPOSE 3000
CMD [ "npm", "start" ]
