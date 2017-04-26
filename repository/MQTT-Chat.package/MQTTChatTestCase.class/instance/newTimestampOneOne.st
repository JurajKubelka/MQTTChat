instance creation
newTimestampOneOne
	^ MQTTChatTimestamp new
		idFromString: self idStringOne;
		timestampFromString: self dateAndTimeStringOne;
		yourself