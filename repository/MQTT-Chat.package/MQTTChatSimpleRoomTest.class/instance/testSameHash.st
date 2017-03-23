tests
testSameHash
	self assert: room hash equals: (self newRoom id: self roomOneId; yourself) hash