accessing
user
	^ user ifNil: [ user := MQTTChatUser new ]