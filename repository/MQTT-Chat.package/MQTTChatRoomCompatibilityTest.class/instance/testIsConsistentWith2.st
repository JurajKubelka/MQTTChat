tests
testIsConsistentWith2
	self assert: ((MQTTChatRoom new id: #one) isConsistentWith: (MQTTChatRoom new id: #one))