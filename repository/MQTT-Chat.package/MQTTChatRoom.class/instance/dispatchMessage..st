network - dispatching
dispatchMessage: aMQTTChatMessage 
	| message |
	message := self receiveMessage: aMQTTChatMessage.
	aMQTTChatMessage == message ifFalse: [ ^ self ].
	self chat announcer announce: (
		MQTTChatMessageReceivedAnnouncement new message: message; room: self; yourself).
	^ message