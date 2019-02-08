FROM node:10.11.0-alpine
WORKDIR /etc/newman
COPY package.json /etc/newman/package.json
COPY src/ /etc/newman/src/
RUN npm install
CMD [ "npm","test" ]