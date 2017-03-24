instance creation
newByteArrayMessage
	| author |
	author := self newAuthor.
	^ (MQTTChatMessage bytes: self newByteArray)
			author: author;
			id: (MQTTChatTimestamp new id: author id; timestamp: DateAndTime now; yourself);
			yourself