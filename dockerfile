FROM node:10.16.0
RUN mkdir -p /src/app
WORKDIR /src/app
COPY client/. /src/app/
RUN npm install
EXPOSE 3000
CMD [ "npm start && npx webpack -d --watch]