tests
testNotEquals
	self deny: room = (MQTTChatRoom new id: self roomTwoId; yourself)