#Layer 1
FROM node:20

#Layer 2
WORKDIR /app

#Layer 3
COPY . .

#Layer 4
RUN npm install
#Layer 5
RUN npm run build
#Layer 6
RUN npx prisma generate

EXPOSE 3000

CMD [ "node", "dist/index.js" ]