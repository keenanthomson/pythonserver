FROM node:10.16.0
RUN mkdir -p /src/app
WORKDIR /src/app
COPY client/. /src/app/
RUN npm install

FROM python:3.7.4
WORKDIR /src/app
COPY server/. /src/app/
RUN pip3 install --requirement requirements.txt
EXPOSE 3000
CMD [ "python3 app.py && npx webpack -d --watch]