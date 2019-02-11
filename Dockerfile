FROM node:10.11.0-alpine as newmanReport
WORKDIR /etc/newman
COPY package.json /etc/newman/package.json
COPY src/ /etc/newman/src/
RUN npm install && npm install -g http-server
# EXPOSE 8080
# CMD [ "npm","run","deploy" ]
