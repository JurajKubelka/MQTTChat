tests
testMQTTChatConnectedAnnouncement
	| chat |
	chat := self newChat.
	chat clientId: 'Testing MQTTChatConnectedAnnouncement'.
	chat mqttClient afterEachCycleBlock: [ :queue | 
		self addToResultsAndSignal: #cycle. ].
	chat announcer when: MQTTChatConnectedAnnouncement do: announcementBlock.
	chat connect.
	[ 
		self assertSemaphore: 3.
		self assert: results size equals: 3.
		self assert: results first class equals: MQTTChatConnectedAnnouncement.
		self assert: results second equals: #cycle.
		self assert: results second equals: #cycle.
	] ensure: [ chat disconnect ].