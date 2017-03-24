tests
testDispatchHistory
	| history message |
	message :=  MQTTChatMessage text: self text.
	history := MQTTChatHistory new messages: { message }; yourself.
	self dispatch: history asByteArray.
	self assert: room messages size equals: 1.
	self assert: room messages first equals: message.
	self assert: results size equals: 1.
	self assert: results first class equals: MQTTChatHistoryReceivedAnnouncement.