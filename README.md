# Paraffin
open source microservice IoT platform

# Paraffin IoT Platform Website


## About


#### Paraffin is IoT platform based on node.js, ponte and mongodb with MQTT, HTTP and CoAP bridge.

Paraffin will enable you to put your IoT API services on your own server simply and painless in one command. It supports the popular MQTT protocol in sync with HTTP. It is in javascript and by Parse Server api server will be able to authorize your device list so broker perform authentication by your entry data in MongoDB by api server.
Broker is based on Ponte and is under development so it should work. It need time to release stable version.


## Features

* Simple and Scalable.
* HTTP, MQTT and CoAP connections together as a bridge.
* MQTT 3.1 and 3.1.1 compliant.
* Sercured with authentication and JWT.


## Steps to run

Firstly besure docker and docker-compose is installed.


Download Paraffin IoT Platform git;
```bash
git clone https://github.com/ParaffinIoT/paraffin

cd paraffin

sudo docker-compose up
```

