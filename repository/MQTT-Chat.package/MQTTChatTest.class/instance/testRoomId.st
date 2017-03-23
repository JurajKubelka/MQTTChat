tests
testRoomId
	| room |
	room := alice roomId: self roomOneId.
	self assert: room id equals: self roomOneId.
	self assert: room class equals: alice newRoom class.