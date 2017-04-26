tests
testIdsFromExcluding2
	| roomMessages |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageOne.
	roomMessages add: self newTextMessageTwo.
	messages idsFrom: roomMessages excluding: { self newTextMessageTwo id }.
	self assert: messages ids equals: { self newTimestampOneOne }