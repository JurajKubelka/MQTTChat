network
networkSendMessage: aMQTTChatMessage toRoom: aMQTTChatRoom
	self announceMessage: aMQTTChatMessage SendingToRoom: aMQTTChatRoom.
	self mqttClient
		sendMessage: aMQTTChatMessage asByteArray
		toTopic: (self roomTopic: aMQTTChatRoom)
		success: [ self announceMessage: aMQTTChatMessage SentToRoom: aMQTTChatRoom ]
		error: [ :exception :client :command | 
			self disconnectedNow.
			self
				announceCannotSendMessage: aMQTTChatMessage
				toRoom: aMQTTChatRoom
				exception: exception.
			command hold ]