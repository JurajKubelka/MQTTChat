tests
testRoomWithId4
	| room newRoom |
	newRoom := alice room: self newRoomOneId.
	room := alice roomWithId: self roomTwoId.	
	self assert: room isNil.
