tests
testMissingIds
	"ids has one extra id"
	| roomMessages missing |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageTwo.
	messages ids: { self newTimestampOneOne. self newTimestampTwoTwo }.
	missing := messages missingIds: roomMessages.
	self assertCollection: missing equals: { self newTimestampOneOne }.