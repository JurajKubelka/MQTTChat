instance creation
text: aString 
	^ self new 
		contents: (MQTTChatText new text: aString; yourself);
		yourself