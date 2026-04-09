FROM node:18

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/Mintplex-Labs/anything-llm.git .

RUN npm install
RUN npm run build

EXPOSE 3001

CMD ["npm", "start"]
