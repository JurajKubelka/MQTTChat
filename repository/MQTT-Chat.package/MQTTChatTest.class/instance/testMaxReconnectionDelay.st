tests
testMaxReconnectionDelay
	| chat |
	chat := self newChat.
	chat maxReconnectionDelay: 42 seconds.
	self assert: chat maxReconnectionDelay equals: 42 seconds.