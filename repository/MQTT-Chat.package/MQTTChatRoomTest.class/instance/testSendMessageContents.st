tests
testSendMessageContents
	| message |
	room announcer when: MQTTChatMessageSendingAnnouncement do: [ :ann | results add: ann ]. 
	message := room sendMessageContents: self newMessageContents.
	self assert: room messages size equals: 1.
	self assert: room messages first == message.
	self assert: message text equals: self text.
	self assert: results size equals: 3.
	self assert: results first class equals: MQTTChatMessageSendingAnnouncement.
	self assert: results second == room.
	self assert: results third == message. 