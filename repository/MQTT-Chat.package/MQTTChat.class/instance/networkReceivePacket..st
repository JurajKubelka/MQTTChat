network
networkReceivePacket: mqttPacket
	| room |
	room := self roomFromTopic: mqttPacket topic.
	room ifNil: [ ^ self log: 'Unknown packet received in ', mqttPacket topic ].
	self log: 'Packet received in ', mqttPacket topic.
	room dispatch: mqttPacket.