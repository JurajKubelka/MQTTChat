accessing
messages
	^ messages ifNil: [ messages := MQTTChatSortedCollection new ]