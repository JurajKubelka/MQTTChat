public
sendData: aByteArray 
	^ self sendMessage: (MQTTChatMessage bytes: aByteArray)