FROM node:14

WORKDIR /src

ENV PORT 8080
ENV HOST 0.0.0.0

COPY . .

RUN yarn install --only=production

RUN yarn build

CMD ["yarn", "start"]
