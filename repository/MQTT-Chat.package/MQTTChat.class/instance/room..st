public
room: aMQTTChatRoom 
	"Creates new room if does not exists and subscribe to the network if necessary."
	| room |
	room := self rooms add: aMQTTChatRoom.
	room == aMQTTChatRoom ifTrue: [ 
		self networkSubscribeToRoom: room ].
	^ room