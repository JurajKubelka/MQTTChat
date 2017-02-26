# MQTTChat

[![Build Status](https://travis-ci.org/JurajKubelka/MQTTChat.svg?branch=master)](https://travis-ci.org/JurajKubelka/MQTTChat) [![Test Status](https://api.bob-bench.org/v1/badgeByUrl?branch=master&hosting=github&ci=travis-ci&repo=JurajKubelka%2FMQTTChat)](https://bob-bench.org/r/gh/JurajKubelka/MQTTChat)

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
