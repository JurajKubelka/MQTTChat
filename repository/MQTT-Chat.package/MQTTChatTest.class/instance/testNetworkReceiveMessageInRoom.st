tests
testNetworkReceiveMessageInRoom
	| aliceRoom aliceMessage pedroRoom |
	self connectAliceAndPedro.
	aliceRoom := alice roomId: self roomOneId.
	pedroRoom := pedro roomId: self roomOneId.
	alice listen. 
	pedro listen.
	pedroRoom announcer when: MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	aliceRoom announcer when: MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	pedro announcer when: MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	alice announcer when: MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	aliceMessage := alice sendTextMessage: self messageStringOne toRoomId: self roomOneId.
	self assertSemaphore: 2.
	self assert: pedroRoom messages size equals: 1.
	self assert: pedroRoom messages first equals: aliceMessage.
	self assert: pedroRoom messages first text equals: self messageStringOne.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatMessageReceivedAnnouncement.
	self assert: results second class equals: MQTTChatMessageReceivedAnnouncement.
	