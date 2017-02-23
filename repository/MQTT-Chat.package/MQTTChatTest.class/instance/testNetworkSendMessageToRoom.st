tests
testNetworkSendMessageToRoom
	| room message |
	self connectAliceAndPedro.
	room := alice roomId: self roomOneId.
	room announcer when: MQTTChatMessageSendingAnnouncement do: announcementBlock.
	alice announcer when: MQTTChatMessageSendingAnnouncement do: announcementBlock.
	room announcer when: MQTTChatMessageSentAnnouncement do: announcementBlock.
	alice announcer when: MQTTChatMessageSentAnnouncement do: announcementBlock.
	message := alice sendTextMessage: self textMessageOne toRoomId: self roomOneId.
	self assertSemaphore: 4.
	self assert: results first message == message.
