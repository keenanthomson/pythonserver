FROM python:3.7.4
RUN mkdir -p /src/app
WORKDIR /src/app
COPY . /src/app
RUN pip3 install -r server/requirements.txt
CMD [ "python3", "server/app.py"]