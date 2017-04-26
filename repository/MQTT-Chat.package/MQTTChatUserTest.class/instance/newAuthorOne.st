instance creation
newAuthorOne
	^ MQTTChatUser new
		name: self usernameStringOne;
		id: self idOne;
		yourself