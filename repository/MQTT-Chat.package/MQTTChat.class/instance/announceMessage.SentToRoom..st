announcement handling
announceMessage: aMQTTChatMessage SentToRoom: aMQTTChatRoom
	| announcement |
	announcement := MQTTChatMessageSentAnnouncement new
		message: aMQTTChatMessage;
		room: aMQTTChatRoom;
		yourself.
	aMQTTChatRoom announce: announcement.
	^ self announce: announcement