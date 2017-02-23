announcement handling
announceSubscribedToRoom: aMQTTChatRoom
	^ self announcer
		announce:
			(MQTTChatSubscribedToRoomAnnoncement new
				room: aMQTTChatRoom;
				yourself)