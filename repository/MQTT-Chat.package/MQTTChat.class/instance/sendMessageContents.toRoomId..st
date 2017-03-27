public
sendMessageContents: aMQTTChatMessageContents toRoomId: roomId 
	^ (self roomId: roomId) sendMessageContents: aMQTTChatMessageContents