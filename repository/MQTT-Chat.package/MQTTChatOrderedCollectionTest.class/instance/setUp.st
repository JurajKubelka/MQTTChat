running
setUp
	super setUp.
	rooms := self newCollection.
	roomOne := MQTTChatRoom new id: self roomOneId.
	roomOneCopy := MQTTChatRoom new id: self roomOneId.
	roomTwo := MQTTChatRoom new id: self roomTwoId.