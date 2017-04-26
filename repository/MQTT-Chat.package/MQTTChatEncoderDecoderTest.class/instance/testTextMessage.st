tests
testTextMessage
	object := self newTextMessage.
	bytes := MQTTChatEncoderDecoder toByteArray: object.
	object2 := MQTTChatEncoderDecoder fromByteArray: bytes.
	self assert: object2 equals: object.
	self assert: object2 contents text equals: object contents text.
	self assert: object2 author equals: object author.
	