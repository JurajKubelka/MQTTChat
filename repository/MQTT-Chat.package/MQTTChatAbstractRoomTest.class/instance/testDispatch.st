tests
testDispatch
	| message |
	message := self dispatch: self newMQTTPublishMessage.
	self assert: room messages size equals: 1.
	self assert: room messages first asByteArray equals: self newMQTTPublishMessage.
	self assert: message == room messages first.