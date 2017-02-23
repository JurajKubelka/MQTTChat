tests
testNotEquals
	self deny: self newAuthor = ((self newAuthor) username: self usernameTwo; yourself)