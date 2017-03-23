tests
testSendDataIsByteArray
	self testSendData.
	self assert: results third class equals: MQTTChatMessage.
	