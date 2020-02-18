# FROM node:10.16.0
# RUN mkdir -p /src/app
# WORKDIR /src/app
# COPY client/. /src/app/
# RUN npm install

FROM python:3.7.4
WORKDIR /src/app
# COPY --from=0 server/. /src/app/

RUN pip3 install --requirement requirements.txt
CMD [ "python3 server/app.py"]