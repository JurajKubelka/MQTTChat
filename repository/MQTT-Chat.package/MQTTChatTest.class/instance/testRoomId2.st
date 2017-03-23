tests
testRoomId2
	| room sameRoom |
	room := alice roomId: self roomOneId.
	self assert: room id equals: self roomOneId.
	self assert: room class equals: alice newRoom class.
	sameRoom := alice roomId: self roomOneId.
	self assert: sameRoom == room.