tests
testDifferentHash
	self deny: self newAuthorOne hash = ((self newAuthorOne) id: self idTwo; yourself) hash