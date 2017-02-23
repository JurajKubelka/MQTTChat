network - dispatching
dispatchHistory: aMQTTChatHistory room: aMQTTChatRoom 
	aMQTTChatRoom receiveHistory: aMQTTChatHistory.
	self announcer announce: (
		MQTTChatHistoryReceivedAnnouncement new history: aMQTTChatHistory; room: aMQTTChatRoom; yourself)