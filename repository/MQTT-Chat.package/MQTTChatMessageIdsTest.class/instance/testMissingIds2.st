tests
testMissingIds2
	"ids is empty"
	| roomMessages missing |
	messages := self newMessageIds.
	roomMessages := self newChatRoomMessagesCollection.
	roomMessages add: self newTextMessageTwo.
	missing := messages missingIds: roomMessages.
	self assertCollection: missing equals: #().