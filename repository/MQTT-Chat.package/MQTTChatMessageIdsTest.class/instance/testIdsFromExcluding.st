tests
testIdsFromExcluding
	| roomMessages |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageOne.
	roomMessages add: self newTextMessageTwo.
	messages idsFrom: roomMessages excluding: #().
	self assert: messages ids equals: { self newTimestampOneOne. self newTimestampTwoTwo }