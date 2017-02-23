public
sendTextMessage: textMessage 
	^ self sendMessage: (MQTTChatMessage text: textMessage)