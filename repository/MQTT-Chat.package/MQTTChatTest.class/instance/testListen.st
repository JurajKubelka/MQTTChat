tests
testListen
	| chat |
	chat := self newChat.
	chat clientId: 'Testing Listen Method'.
	chat mqttClient afterEachCycleBlock: [ :queue | 
		self addToResultsAndSignal: #cycle. ].
	chat connect.
	[ 
		self assertSemaphore.
		self assert: chat mqttClient size equals: 0.
		chat listen.
		self assertSemaphore.
		self assert: chat mqttClient size equals: 1.
		chat listen.
		self assertSemaphore.
		self assert: chat mqttClient size equals: 1.
	] ensure: [ chat disconnect ].