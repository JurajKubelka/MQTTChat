instance creation
newMQTTPublishMessage
	^ (MQTTChatMessage text: self text) asByteArray