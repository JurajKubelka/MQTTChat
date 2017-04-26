tests
testNotEquals
	self deny: self newAuthorOne = ((self newAuthorOne) name: self usernameStringTwo; yourself)