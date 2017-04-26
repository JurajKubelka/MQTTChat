instance creation
newTextMessage
	| author |
	author := self newAuthorOne.
	^ (MQTTChatMessage text: self text)
			author: author;
			id: (MQTTChatTimestamp new id: author id; timestamp: DateAndTime now; yourself);
			yourself