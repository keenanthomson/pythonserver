# pythonserver
Core setup for building a Python backend and React frontend app. After installing dependencies and starting the app you can immediately begin serving static files from a Flask server to a web client, with the option to build and deploy a Docker image.

This repo is intended for development and must be reconfigured for production.

## Prerequisites

Before you begin, ensure you have met the following requirements:

* You have installed the latest version of Python3, pip3, Node.js, and Docker

## Installing pythonserver

* Navigate to the `/client` folder and run `npm install`
* Navigate to the `/server` folder and run `pip3 install -r server/requirements.txt`

## Using pythonserver

To start using pythonserver:

* Start webpack from the `client` directory by running `npm run build-dev`
* Start the server from the root directory with `python3 server/app.py`
* Navigate to `http://localhost:5000/index.html` to send a request to your server

To build and deploy a docker image:

* Run `docker build -t _yourimagename_:_yourimageversion_ .`
* Deploy a container by running `docker run -p 5000:5000 _yourimageID_`
* Note that by default the Flask server runs on `port 5000`
* The [docker-cheat-sheet](https://github.com/wsargent/docker-cheat-sheet) repo is a helpful guide for various Docker questions.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
