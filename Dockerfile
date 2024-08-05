#Layer 1
FROM node:20

#Layer 2
WORKDIR /app

#Layer 3
COPY package* .
#Layer 4
COPY ./prisma .

#Layer 4 --> Layer 5 
RUN npm install
#Layer 6 --> Layer 6
RUN npx prisma generate

#Layer 3 --> Layer 7
COPY . .

#Layer 5 --> Layer 8
RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/index.js" ]