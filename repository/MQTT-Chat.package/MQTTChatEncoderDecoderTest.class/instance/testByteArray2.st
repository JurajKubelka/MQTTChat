tests
testByteArray2
	object := self newByteArray.
	self should: [ MQTTChatEncoderDecoder fromByteArray: object ] raise: STONReaderError.