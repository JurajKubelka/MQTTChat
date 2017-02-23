tests
testLessOrEqual
	self assert: room <= (MQTTChatRoom new id: self roomTwoId; yourself)