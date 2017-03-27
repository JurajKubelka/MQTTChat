instance creation
newAuthor
	^ MQTTChatUser new
		name: self username;
		yourself