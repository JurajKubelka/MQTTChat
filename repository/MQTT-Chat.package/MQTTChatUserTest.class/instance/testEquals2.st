tests
testEquals2
	| userOne userTwo |
	userOne := self newAuthor.
	userTwo := (MQTTChatEncoderDecoder fromByteArray: (MQTTChatEncoderDecoder toByteArray: userOne)).
	self assert: userTwo equals: userOne.