tests
testEqualsSimleRoomAndRoom
	self 
		assert: (MQTTChatSimpleRoom new id: #one) 
		equals: (MQTTChatRoom new id: #one)