instance creation
newTextMessageTwo
	^ (MQTTChatMessage text: self messageStringTwo)
			author: self newAuthorTwo;
			id: self newTimestampTwoTwo;
			yourself