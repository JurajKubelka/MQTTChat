announce
announceInChat: aMQTTChatMessageReceivedAnnouncement 
	self chat ifNil: [ ^ self ].
	self chat announce: aMQTTChatMessageReceivedAnnouncement