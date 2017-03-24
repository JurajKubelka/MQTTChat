public
sendDataMessage: aByteArray 
	^ self sendMessage: (MQTTChatMessage bytes: aByteArray)