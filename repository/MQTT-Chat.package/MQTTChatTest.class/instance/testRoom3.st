tests
testRoom3
	| room newRoom newRoom2 |
	newRoom := self newSimpleRoomOneId.
	room := alice room: newRoom.
	self assert: room == newRoom.
	newRoom2 := self newRoomOneId.
	self should: [ alice room: newRoom2 ] raise: MQTTChatInconsistentRooms.
	