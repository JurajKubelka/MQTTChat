announcement handling
announceMessage: aMQTTChatMessage SendingToRoom: aMQTTChatRoom
	self
		announce:
			(MQTTChatMessageSendingAnnouncement new
				message: aMQTTChatMessage;
				room: aMQTTChatRoom;
				yourself)