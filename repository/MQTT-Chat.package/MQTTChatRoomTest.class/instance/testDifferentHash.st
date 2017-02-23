tests
testDifferentHash
	self deny: room hash = (MQTTChatRoom new id: self roomTwoId; yourself) hash