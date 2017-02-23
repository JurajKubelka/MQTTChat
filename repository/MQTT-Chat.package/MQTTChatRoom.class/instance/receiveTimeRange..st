receiving
receiveTimeRange: aMQTTChatTimeRange 
	| request history |
	request := self messages 
		select: [ :eachMessage | aMQTTChatTimeRange includes: eachMessage datetime ].
	history := MQTTChatHistory new messages: request asArray; yourself.
	self chat networkSendHistory: history inRoom: self.