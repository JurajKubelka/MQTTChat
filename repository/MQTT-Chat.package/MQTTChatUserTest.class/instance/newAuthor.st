instance creation
newAuthor
	^ MQTTChatUser new
		name: self usernameOne;
		id: self idOne;
		yourself