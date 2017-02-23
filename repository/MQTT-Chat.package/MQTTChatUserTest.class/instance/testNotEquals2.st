tests
testNotEquals2
	self deny: self newAuthor = ((self newAuthor) id: self idTwo; yourself)