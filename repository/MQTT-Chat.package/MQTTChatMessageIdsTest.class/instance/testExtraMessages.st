tests
testExtraMessages
	"roomMessages has one extra message"
	| roomMessages extra |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageOne.
	roomMessages add: self newTextMessageTwo.
	messages ids: { self newTimestampOneOne }.
	extra := messages extraMessages: roomMessages.
	self assertCollection: extra equals: { self newTextMessageTwo }.