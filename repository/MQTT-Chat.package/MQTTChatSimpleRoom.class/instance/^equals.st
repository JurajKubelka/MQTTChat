comparing
= anObject
	^ (anObject isKindOf: MQTTChatSimpleRoom) and: [ 
		self id = anObject id ]