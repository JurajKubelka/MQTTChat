accessing
rooms
	^ rooms ifNil: [ rooms := MQTTChatOrderedCollection new ]