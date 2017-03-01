network - dispatching
dispatchMessage: aMQTTChatMessage room: aMQTTChatRoom 
	| message |
	message := aMQTTChatRoom receiveMessage: aMQTTChatMessage.
	aMQTTChatMessage == message ifFalse: [ ^ self ].
	self announcer announce: (
		MQTTChatMessageReceivedAnnouncement new message: message; room: aMQTTChatRoom; yourself)