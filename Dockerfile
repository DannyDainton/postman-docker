FROM node:8.12.0-alpine

# Install newman and newman-reporter-html
RUN npm install -g newman
RUN npm install -g newman-reporter-html

WORKDIR /etc/newman

ENTRYPOINT ["newman"]