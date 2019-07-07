<p align="center">
  <img src="https://raw.githubusercontent.com/ParaffinIoT/docs/master/images/paraffin_iot_platform.png">
</p>

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
Run the following command in your terminal to install the latest official Paraffin IoT Platform release. For customization environment variables, make ./broker.env and ./apiserver.env with your desired variables before run installer shell script. Deafualt value will loaded if .env files is not existence in current path.

```bash
sudo curl -o- https://raw.githubusercontent.com/ParaffinIoT/paraffin/master/install.sh | bash
```

### Install by git
Download Paraffin IoT Platform git and deploy by docker-compose

```bash
git clone https://github.com/ParaffinIoT/paraffin

cd paraffin

sudo docker-compose up
```



### Learn more

You can find a test version of Paraffin IoT Platform at paraffin.iokloud.com as soon as possible.

If you find Paraffin useful, consider supporting the project by buying a support package
from [me](http://twitter.com/iokloud) by writing an email to iokloud.com@gmail.com

Check out our [showcase](https://github.com/ParaffinIoT/paraffin/wiki/Paraffin-Showcases) wiki
page! Feel free to add yourself! :)

## Security Issues

__Paraffin-IoT__ sits between your system and the devices: this is a tough role, and we did our best to secure your systems.
However, you might find a security issue: in that case, email iokloud.com@gmail.com


## Feedback

Use the [issue tracker](https://github.com/ParaffinIoT/paraffin/issues) for bugs.
[Tweet](http://twitter.com/iokloud) us for any idea that can improve the project.


## Links

* [authBroker](https://github.com/authbroker/authbroker)
* [Mosca](http://github.com/mcollina/mosca)
* [Ponte](https://github.com/eclipse/ponte)
* [Parse Server](https://parseplatform.org)
* [Mongodb](https://www.mongodb.com/)
* [MQTT protocol](http://mqtt.org)
* [MQTT.js](http://github.com/adamvr/MQTT.js)
* [Paraffin Platform](https://paraffiniot.github.io)


## Authors

[Hadi Mahdavi](https://github.com/expandboard)
[Nana Kwame Zoe](https://github.com/banphlet)
[Kwarteng Wisdom](https://github.com/Wisdom0063)
[Ahmad Rafiee](https://github.com/AhmadRafiee)
