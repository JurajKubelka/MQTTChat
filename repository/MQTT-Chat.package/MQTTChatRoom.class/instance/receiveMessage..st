receiving
receiveMessage: aMQTTChatMessage 
	| message |
	message := self messages add: aMQTTChatMessage.
	message == aMQTTChatMessage ifTrue: [
		self announcer announce: (
			MQTTChatMessageReceivedAnnouncement new 
				message: message; room: self; yourself) ].
	^ message