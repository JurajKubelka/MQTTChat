public
roomId: aString 
	^ self room: (MQTTChatRoom new id: aString; chat: self; yourself)