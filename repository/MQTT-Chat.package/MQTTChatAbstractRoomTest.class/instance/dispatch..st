utility
dispatch: bytes
	| packet |
	packet := MQTTPublish new topic: self topic; message: bytes; yourself.
	"room := self newRoom chat: self newChat; yourself."
	^ room dispatch: packet.