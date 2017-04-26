enumerating
extraMessages: aMQTTChatCollection 
	"Return a collection of messages, present in aMQTTChatCollection, but not in the ids list.
	This message is useful in order to find out what messages are present in aMQTTChatCollection but the other clients do not have them."
	self ids isEmptyOrNil ifTrue: [ ^ aMQTTChatCollection asArray ].
	^ (aMQTTChatCollection select: [ :eachMessage | (self ids includes: eachMessage id) not ]) as: Array