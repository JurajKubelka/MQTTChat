instance creation
newAuthor
	^ MQTTChatUser new
		username: self username;
		yourself