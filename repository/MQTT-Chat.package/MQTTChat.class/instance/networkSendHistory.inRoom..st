network
networkSendHistory: aMQTTChatHistory inRoom: aMQTTChatRoom 
	self mqttClient 
		sendMessage: aMQTTChatHistory asByteArray
		toTopic: (self roomTopic: aMQTTChatRoom)
		success: [ "do nothing" ]
		error: [ :exception :client :command | 
			self disconnectedNow.
			command hold ]