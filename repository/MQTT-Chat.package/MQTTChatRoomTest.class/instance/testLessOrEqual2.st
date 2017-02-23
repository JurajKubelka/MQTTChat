tests
testLessOrEqual2
	self assert: room <= (MQTTChatRoom new id: self roomOneId; yourself)