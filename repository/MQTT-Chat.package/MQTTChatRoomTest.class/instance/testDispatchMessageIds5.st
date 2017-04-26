tests
testDispatchMessageIds5
	"Receive and dispatch MessageIds request.
	Room has one message and it receives two ids including the message one.
	It should send ids with one id."
	| request |
	room messages 
		add: self newTextMessageTwo.
	request := self newRequest
		author: self newUser;
		id: room newId;
		request: (self newMessageIds ids: { self newTimestampOneOne. self newTimestampTwoTwo }; yourself);
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatRequest.
	self assert: results first request class equals: MQTTChatMessageIds.
	self assert: results first request ids size equals: 1.
	self assert: results first request ids first equals: self newTimestampTwoTwo.
	self assert: results second == room.