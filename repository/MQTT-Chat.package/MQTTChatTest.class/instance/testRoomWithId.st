tests
testRoomWithId
	| room newRoom |
	newRoom := alice room: self newSimpleRoomOneId.
	room := alice roomWithId: self roomOneId.	
	self assert: room == newRoom.
