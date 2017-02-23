receiving
receiveMessage: aMQTTChatMessage 
	| message |
	message := self messages add: aMQTTChatMessage.
	self announcer announce: (
		MQTTChatMessageReceivedAnnouncement new message: message; room: self; yourself)