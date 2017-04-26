enumerating
missingIds: aMQTTChatCollection 
	"Return a collection of ids that are not present in aMQTTChatCollection.
	This message is useful in order to find out what messages are missing and client should ask for them."
	self ids isEmptyOrNil ifTrue: [ ^ #() ].
	^ (self ids select: [ :eachId | (aMQTTChatCollection anySatisfy: [ :eachMessage | eachMessage id = eachId ]) not ]) as: Array