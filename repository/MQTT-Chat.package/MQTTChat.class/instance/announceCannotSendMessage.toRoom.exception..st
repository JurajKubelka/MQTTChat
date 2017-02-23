announcement handling
announceCannotSendMessage: aMQTTChatMessage toRoom: aMQTTChatRoom exception: exception
	aMQTTChatRoom
		announce:
			(MQTTChatCannotSendMessageAnnouncement new
				message: aMQTTChatMessage;
				room: aMQTTChatRoom;
				exception: exception;
				yourself)