tests
testRoom2
	| room newRoom newRoom2 room2 |
	newRoom := self newSimpleRoomOneId.
	room := alice room: newRoom.
	self assert: room == newRoom.
	newRoom2 := self newSimpleRoomOneId.
	room2 := alice room: newRoom2.
	self assert: room == room2.