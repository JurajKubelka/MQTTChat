tests
testIsConsistentWith4
	self deny: ((MQTTChatSimpleRoom new id: #one) isConsistentWith: (MQTTChatRoom new id: #one))