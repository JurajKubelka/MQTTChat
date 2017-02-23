network
networkSendRequest: request inRoom: aMQTTChatRoom 
	self mqttClient 
		sendMessage: request asByteArray
		toTopic: (self roomTopic: aMQTTChatRoom)
		success: [ "do nothing" ]
		error: [ :exception :client :command | 
			self disconnectedNow.
			"send it when possible"
			command hold ]