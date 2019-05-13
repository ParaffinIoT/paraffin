# Paraffin
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/) [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT) [![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)](https://github.com/ellerbrock/open-source-badges/) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity) [![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama)

open source microservice IoT platform. See [Paraffin Platform](https://paraffiniot.github.io)


## About


#### Paraffin is IoT platform based on node.js, ponte and mongodb with MQTT, HTTP and CoAP bridge.

Paraffin will enable you to put your IoT API services on your own server simply and painless in one command. It supports the popular MQTT protocol in sync with HTTP. It is in javascript and by Parse Server api server will be able to authorize your device list so broker perform authentication by your entry data in MongoDB by api server.
Broker is based on Ponte and is under development so it should work. It need time to release stable version.


## Features

* Simple and Scalable.
* HTTP, MQTT and CoAP connections together as a bridge.
* MQTT 3.1 and 3.1.1 compliant.
* Sercured with authentication and JWT.


## Installation
Paraffin IoT Platform is installed by two methods. Firstly besure docker and docker-compose is installed.

### Install by script
Run the following command in your terminal to install the latest official Paraffin IoT Platform release.

```bash
sudo curl -o- https://raw.githubusercontent.com/ParaffinIoT/paraffin/master/install.sh | bash
```

### Install by git
Download Paraffin IoT Platform git

```bash
git clone https://github.com/ParaffinIoT/paraffin

cd paraffin

sudo docker-compose up
```

