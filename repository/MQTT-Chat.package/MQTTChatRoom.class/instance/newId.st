instance creation
newId
	^ MQTTChatTimestamp new id: self author id; timestamp: DateAndTime now; yourself