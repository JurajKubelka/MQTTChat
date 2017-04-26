tests
testExtraMessages2
	"ids is empty"
	| roomMessages extra |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageOne.
	roomMessages add: self newTextMessageTwo.
	extra := messages extraMessages: roomMessages.
	self assertCollection: extra equals: { self newTextMessageOne. self newTextMessageTwo }.