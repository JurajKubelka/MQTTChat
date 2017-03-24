tests
testIsConsistentWith3
	self assert: ((MQTTChatSimpleRoom new id: #one) isConsistentWith: (MQTTChatSimpleRoom new id: #one))