tests
testSendMessageContentsToRoomId
	| room message |
	room := alice roomId: self roomOneId.
	message := alice sendMessageContents: self newMessageContents toRoomId: self roomOneId.
	self assert: room messages size equals: 1.
	self assert: room messages first == message.
	self assert: room messages first text equals: self textMessageOne.