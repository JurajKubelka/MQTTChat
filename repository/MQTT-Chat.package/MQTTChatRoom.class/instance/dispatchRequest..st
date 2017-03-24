network - dispatching
dispatchRequest: aMQTTChatRequest 
	aMQTTChatRequest author = self user ifTrue: [ ^ self ].
	aMQTTChatRequest request dispatchBy: self