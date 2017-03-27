public
sendMessageContents: aMQTTChatMessageContents 
	^ self sendMessage: (MQTTChatMessage contents: aMQTTChatMessageContents)