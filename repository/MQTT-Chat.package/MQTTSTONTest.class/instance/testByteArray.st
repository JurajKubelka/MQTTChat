tests
testByteArray
	object := self newByteArray.
	bytes := MQTTChatEncoderDecoder toByteArray: object.
	object2 := MQTTChatEncoderDecoder fromByteArray: bytes.
	self assert: object2 equals: object.
	