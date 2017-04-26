tests
testEquals2
	| userOne userTwo |
	userOne := self newAuthorOne.
	userTwo := (MQTTChatEncoderDecoder fromByteArray: (MQTTChatEncoderDecoder toByteArray: userOne)).
	self assert: userTwo equals: userOne.