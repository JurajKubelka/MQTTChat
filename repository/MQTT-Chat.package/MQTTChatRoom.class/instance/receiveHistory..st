receiving
receiveHistory: aMQTTChatHistory 
	| announcement |
	aMQTTChatHistory messages do: [ :eachMessage | 
		self messages add: eachMessage ].
	announcement := MQTTChatHistoryReceivedAnnouncement new 
		history: aMQTTChatHistory; room: self; yourself.
	self announce: announcement.
	self announceInChat: announcement.
