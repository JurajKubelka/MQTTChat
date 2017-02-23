network
networkReceivePacket: mqttPacket
	| message room |
	message := MQTTChatEncoderDecoder fromByteArray: mqttPacket contents.
	room := self roomFromTopic: mqttPacket topic.
	self log: 'Packet received in ', mqttPacket topic.
	self dispatch: message inRoom: room.