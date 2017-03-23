tests
testRoom
	| room newRoom |
	newRoom := self newSimpleRoomOneId.
	room := alice room: newRoom.
	self assert: room == newRoom.
