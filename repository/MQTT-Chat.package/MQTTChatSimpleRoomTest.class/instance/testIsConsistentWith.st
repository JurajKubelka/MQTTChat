tests
testIsConsistentWith
	self deny: ((MQTTChatRoom new id: #one) isConsistentWith: (MQTTChatSimpleRoom new id: #one))