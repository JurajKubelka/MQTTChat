tests
testDispatchMessageIds4
	"Receive and dispatch MessageIds request.
	Room has two messages and it receives two ids of those messages.
	It should not send anything."
	| request |
	room messages 
		add: self newTextMessageOne;
		add: self newTextMessageTwo.
	request := self newRequest
		author: self newUser;
		id: room newId;
		request: (self newMessageIds ids: { self newTimestampOneOne. self newTimestampTwoTwo }; yourself);
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 0.
