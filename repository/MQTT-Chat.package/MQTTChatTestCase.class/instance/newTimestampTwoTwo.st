instance creation
newTimestampTwoTwo
	^ MQTTChatTimestamp new
		idFromString: self idStringTwo;
		timestampFromString: self dateAndTimeStringTwo;
		yourself