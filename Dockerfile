FROM icr.io/codeengine/node:12-alpine
COPY package.json .
COPY package-lock.json .
COPY index.js .
COPY index.html .
RUN npm install
EXPOSE 8080
CMD [ "node", "index.js" ]