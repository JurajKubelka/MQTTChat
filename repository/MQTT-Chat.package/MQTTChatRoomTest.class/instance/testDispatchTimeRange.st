tests
testDispatchTimeRange
	| request |
	request := self newRequest
		author: MQTTChatUser new;
		id: room newId;
		request: MQTTChatTimeRange new all;
		yourself.
	self dispatch: request asByteArray.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatHistory.
	self assert: results second == room