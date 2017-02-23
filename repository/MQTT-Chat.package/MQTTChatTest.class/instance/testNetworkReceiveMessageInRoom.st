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
	aliceMessage := alice sendTextMessage: self textMessageOne toRoomId: self roomOneId.
	self assertSemaphore.
	self assertSemaphore.
	self assertSemaphore.
	self assertSemaphore.
	self assert: pedroRoom messages size equals: 1.
	self assert: pedroRoom messages first equals: aliceMessage.
	self assert: pedroRoom messages first text equals: self textMessageOne.