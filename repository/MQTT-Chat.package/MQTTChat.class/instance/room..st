public
room: aMQTTChatRoom 
	"Creates new room if does not exists and subscribe to the network if necessary."
	| room |
	room := self rooms add: aMQTTChatRoom.
	(room isConsistentWith:  aMQTTChatRoom) ifFalse: [
		MQTTChatInconsistentRooms new existing: room; requested: aMQTTChatRoom; signal ].
	room == aMQTTChatRoom ifTrue: [ 
		self networkSubscribeToRoom: room ].
	^ room