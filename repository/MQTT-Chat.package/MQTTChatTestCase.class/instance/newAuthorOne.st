instance creation
newAuthorOne
	^ self newChatUser
		name: self usernameStringOne;
		id: self newIdOne;
		yourself