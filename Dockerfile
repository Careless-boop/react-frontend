FROM node:20.9.0-alpine

ENV NODE_ENV development

WORKDIR /frontend

# Installing dependencies
COPY .env /frontend
COPY src /frontend
COPY public /frontend
COPY ./package.json /frontend
RUN npm install

# Copying all the files in our project
COPY . .

# Starting our application
CMD npm start