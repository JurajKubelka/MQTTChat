tests
testNotEquals2
	self deny: self newAuthorOne = ((self newAuthorOne) id: self idTwo; yourself)