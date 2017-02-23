tests
testEquals
	self assert: room equals: (MQTTChatRoom new id: self roomOneId; yourself)