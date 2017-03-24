tests
testRoomWithId2
	| room newRoom |
	newRoom := alice room: self newSimpleRoomOneId.
	room := alice roomWithId: self roomTwoId.	
	self assert: room isNil.
