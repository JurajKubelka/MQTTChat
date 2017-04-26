network - dispatching
dispatch: mqttPacket 
	[ | message |
		message := MQTTChatEncoderDecoder fromByteArray: mqttPacket contents.
		^ message dispatchBy: self
	] on: STONReaderError do: [ :exception | 
		self log: 'Received corrupted packet in ', mqttPacket topic ].