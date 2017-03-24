network - dispatching
dispatch: aMQTTPublish 
	"I receive only byte array. So I just store it."
	| bytes |
	bytes := self messages add: aMQTTPublish contents.
	bytes == aMQTTPublish contents ifTrue: [ | announcement |
		announcement := (MQTTChatMessageReceivedAnnouncement new 
				message: bytes; room: self; yourself).
		self announce: announcement.
		self announceInChar: announcement ].
	^ bytes