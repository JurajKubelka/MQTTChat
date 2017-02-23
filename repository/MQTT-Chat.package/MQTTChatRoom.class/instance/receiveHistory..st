receiving
receiveHistory: aMQTTChatHistory 
	aMQTTChatHistory messages do: [ :eachMessage | 
		self messages add: eachMessage ].
	self announcer announce: (
		MQTTChatHistoryReceivedAnnouncement new history: aMQTTChatHistory; room: self; yourself)