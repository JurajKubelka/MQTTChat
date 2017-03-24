tests
testRoomWithId3
	| room newRoom |
	newRoom := alice room: self newRoomOneId.
	room := alice roomWithId: self roomOneId.	
	self assert: room == newRoom.
