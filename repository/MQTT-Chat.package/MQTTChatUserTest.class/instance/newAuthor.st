instance creation
newAuthor
	^ MQTTChatUser new
		username: self usernameOne;
		id: self idOne;
		yourself