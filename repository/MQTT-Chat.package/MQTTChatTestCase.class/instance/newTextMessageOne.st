instance creation
newTextMessageOne
	^ (MQTTChatMessage text: self messageStringOne)
			author: self newAuthorOne;
			id: self newTimestampOneOne;
			yourself