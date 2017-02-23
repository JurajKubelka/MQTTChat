network - dispatching
dispatchRequest: aMQTTChatRequest room: aMQTTChatRoom 
	aMQTTChatRequest author = self user ifTrue: [ ^ self ].
	aMQTTChatRequest request dispatchBy: self room:  aMQTTChatRoom