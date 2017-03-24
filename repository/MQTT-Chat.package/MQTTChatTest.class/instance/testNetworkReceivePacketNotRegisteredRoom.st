tests
testNetworkReceivePacketNotRegisteredRoom
	| chat mqttPacket |
	chat := self newChat.
	mqttPacket := MQTTPublish new topic: self roomOneId asString.
	chat networkReceivePacket: mqttPacket.
	self assert: chat rooms size equals: 0.
