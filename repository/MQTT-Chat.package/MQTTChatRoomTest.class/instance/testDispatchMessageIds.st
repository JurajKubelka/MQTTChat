tests
testDispatchMessageIds
	"Receive and dispatch MessageIds request.
	Room is empty and it receives one id.
	It should send request with empty ids."
	| request |
	request := self newRequest
		author: self newUser;
		id: room newId;
		request: (self newMessageIds ids: { self newTimestampOneOne }; yourself);
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatRequest.
	self assert: results first request class equals: MQTTChatMessageIds.
	self assert: results first request ids isEmpty.
	self assert: results second == room.