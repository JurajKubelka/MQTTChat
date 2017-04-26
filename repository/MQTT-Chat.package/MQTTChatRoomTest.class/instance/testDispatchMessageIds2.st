tests
testDispatchMessageIds2
	"Receive and dispatch MessageIds request.
	Room has one message and it receives one id different from the message.
	It should send history with the message one, and ids with id one."
	| request |
	room messages add: self newTextMessageOne.
	request := self newRequest
		author: self newUser;
		id: room newId;
		request: (self newMessageIds ids: { self newTimestampTwoTwo }; yourself);
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 4.
	self assert: results first class equals: MQTTChatHistory.
	self assert: results first messages size equals: 1.
	self assert: results first messages first equals: self newTextMessageOne.
	self assert: results second == room.
	self assert: results third class equals: MQTTChatRequest.
	self assert: results third request class equals: MQTTChatMessageIds.
	self assert: results third request ids size equals: 1.
	self assert: results third request ids first equals: self newTimestampOneOne.
	self assert: results fourth == room.