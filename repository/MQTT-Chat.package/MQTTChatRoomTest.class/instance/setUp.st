running
setUp
	super setUp.
	results := OrderedCollection new.
	room := MQTTChatRoom new id: self roomOneId; chat: self; yourself