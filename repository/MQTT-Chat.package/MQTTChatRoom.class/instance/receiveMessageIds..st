receiving
receiveMessageIds: aMQTTChatMessageIds 
	| extraMessages missingIds |
	extraMessages := aMQTTChatMessageIds extraMessages: self messages.
	extraMessages ifNotEmpty: [ | history |
		history := MQTTChatHistory new messages: extraMessages asArray; yourself.
		self chat networkSendHistory: history inRoom: self ].
	missingIds := aMQTTChatMessageIds missingIds: self messages.
	missingIds ifNotEmpty: [ self sendMessageIds ]