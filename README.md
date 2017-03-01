# MQTTChat

[![Build Status](https://travis-ci.org/JurajKubelka/MQTTChat.svg?branch=master)](https://travis-ci.org/JurajKubelka/MQTTChat)

[![Build status](https://ci.appveyor.com/api/projects/status/dw9mqd0sagdr3gd3/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/mqttchat/branch/master)

A MQTT messaging library for [Pharo](http://pharo.org). It is build on top of [MQTT library](http://github.com/svenvc/mqtt) where you can find out more information about MQTT.

## Source Code

The code is hosted on [SmalltalkHub](http://smalltalkhub.com/#!/~JurajKubelka/MQTTChat).

## Installation

Evaluate the following code in Playground:

```
Gofer it
	smalltalkhubUser: 'JurajKubelka' project: 'MQTTChat';
	configuration;
	loadStable.
```

### Example

To play with it, you can connect to the [IoT Eclipse server](http://iot.eclipse.org). To use a prepared example, execute the following code:

```
MQTTChat exampleAliceAndPedroIoTEclipse
```

You can use a local server, using the following example:

```
MQTTChat exampleAliceAndPedroLocal
```
