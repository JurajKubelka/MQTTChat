tests
testEquals3
	| userOne userTwo |
	userOne := MQTTChatUser new name: self usernameStringOne; yourself.
	userTwo := (MQTTChatEncoderDecoder fromByteArray: (MQTTChatEncoderDecoder toByteArray: userOne)).
	self assert: userTwo equals: userOne.