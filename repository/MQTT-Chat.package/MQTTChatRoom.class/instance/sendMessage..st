public
sendMessage: aMQTTChatMessage 
	| message |
	aMQTTChatMessage
		author: self author;
		id: self newId.
	message := self messages add: aMQTTChatMessage.
	self announce: (MQTTChatMessageSendingAnnouncement new message: message; room: self; yourself).
	self chat networkSendMessage: message toRoom: self.
	^ message