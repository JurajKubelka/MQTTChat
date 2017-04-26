instance creation
newTimestampTwoOne
	^ MQTTChatTimestamp new
		idFromString: self idStringTwo;
		timestampFromString: self dateAndTimeStringOne;
		yourself