tests
testEqualsRoomAndSimleRoom
	self 
		assert: (MQTTChatRoom new id: #one) 
		equals: (MQTTChatSimpleRoom new id: #one)