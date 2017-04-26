tests
testDispatchMessageIds3
	"Receive and dispatch MessageIds request.
	Room has two messages and it receives one id of the message two.
	It should send history with the message one."
	| request |
	room messages 
		add: self newTextMessageOne;
		add: self newTextMessageTwo.
	request := self newRequest
		author: self newUser;
		id: room newId;
		request: (self newMessageIds ids: { self newTimestampTwoTwo }; yourself);
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatHistory.
	self assert: results first messages size equals: 1.
	self assert: results first messages first equals: self newTextMessageOne.
	self assert: results second == room.