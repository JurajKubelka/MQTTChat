instance creation
bytes: aByteArray 
	^ self new 
		contents: (MQTTChatByteArray new bytes: aByteArray; yourself);
		yourself