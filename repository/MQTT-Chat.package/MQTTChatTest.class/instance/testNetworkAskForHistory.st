tests
testNetworkAskForHistory
	| message pedroRoom |
	alice connect; listen.
	alice roomId: self roomOneId.
	alice announcer when: MQTTChatMessageSentAnnouncement do: announcementBlock.
	message := alice sendTextMessage: self messageStringOne toRoomId: self roomOneId.
	self assertSemaphore: 1.
	pedro announcer when: MQTTChatHistoryReceivedAnnouncement do: announcementBlock.
	pedro connect; listen.
	pedroRoom := pedro roomId: self roomOneId.
	pedro askForHistory: self newTimeRange inRoomId: self roomOneId.
	self assertSemaphore: 2.
	self assert: results first message == message.
	self assert: pedroRoom messages size equals: 1.
	self assert: pedroRoom messages first equals: message.