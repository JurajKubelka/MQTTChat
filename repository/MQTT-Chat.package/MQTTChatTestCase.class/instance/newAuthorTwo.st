instance creation
newAuthorTwo
	^ self newChatUser
		name: self usernameStringTwo;
		id: self newIdTwo;
		yourself