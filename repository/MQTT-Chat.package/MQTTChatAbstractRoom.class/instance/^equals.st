comparing
= anObject
	^ (anObject isKindOf: MQTTChatAbstractRoom) and: [ 
		self id = anObject id ]