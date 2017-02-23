tests
testSameHash
	self assert: room hash equals: (MQTTChatRoom new id: self roomOneId; yourself) hash