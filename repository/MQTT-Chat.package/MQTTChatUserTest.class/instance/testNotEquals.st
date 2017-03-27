tests
testNotEquals
	self deny: self newAuthor = ((self newAuthor) name: self usernameTwo; yourself)