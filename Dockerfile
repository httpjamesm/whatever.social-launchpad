FROM node:18-alpine

WORKDIR /app

COPY tsconfig.json .
COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

RUN yarn build

EXPOSE 4173

CMD [ "yarn", "preview", "--host", "0.0.0.0", "--port", "80" ]