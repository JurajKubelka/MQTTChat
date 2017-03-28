network - dispatching
dispatchMessage: aMQTTChatMessage 
	| message |
	message := self receiveMessage: aMQTTChatMessage.
	aMQTTChatMessage == message ifFalse: [ ^ self ].
	self announceInChat: (
		MQTTChatMessageReceivedAnnouncement new message: message; room: self; yourself).
	^ message