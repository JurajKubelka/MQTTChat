tests
testMQTTChatConnectingAnnouncement
	| chat |
	chat := self newChat.
	chat clientId: 'Testing MQTTChatConnectingAnnouncement'.
	chat mqttClient afterEachCycleBlock: [ :queue | 
		self addToResultsAndSignal: #cycle. ].
	chat announcer when: MQTTChatConnectingAnnouncement do: announcementBlock.
	chat connect.
	[ 
		self assertSemaphore: 3.
		self assert: results size equals: 3.
		self assert: results first class equals: MQTTChatConnectingAnnouncement.
		self assert: results second equals: #cycle.
		self assert: results second equals: #cycle.
	] ensure: [ chat disconnect ].