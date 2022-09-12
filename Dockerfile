FROM node:10-alpine
RUN mkdir -p /home/test/node_modules && chown -R node:node /home/test
WORKDIR /home/test
COPY  package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD  ["node" , "index.js"]
