network
networkSubscribeToRoom: aMQTTChatRoom
	self mqttClient
		subscribeToTopic: (self roomTopic: aMQTTChatRoom)
		success: [ self announceSubscribedToRoom: aMQTTChatRoom ]
		error: [ :exception :client :command | 
			self disconnectedNow.
			self announceCannotSubscribeToRoom: aMQTTChatRoom exception: exception.
			command hold ]