network - dispatching
dispatchMessage: aMQTTChatMessage room: aMQTTChatRoom 
	aMQTTChatRoom receiveMessage: aMQTTChatMessage.
	self announcer announce: (
		MQTTChatMessageReceivedAnnouncement new message: aMQTTChatMessage; room: aMQTTChatRoom; yourself)