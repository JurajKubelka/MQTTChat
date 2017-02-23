tests
testDifferentHash
	self deny: self newAuthor hash = ((self newAuthor) id: self idTwo; yourself) hash