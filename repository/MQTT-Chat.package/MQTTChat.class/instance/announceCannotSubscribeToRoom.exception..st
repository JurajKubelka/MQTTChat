announcement handling
announceCannotSubscribeToRoom: aMQTTChatRoom exception: exception
	self announcer
		announce:
			(MQTTChatCannotSubscribeToRoomAnnoncement new
				room: aMQTTChatRoom;
				exception: exception;
				yourself)