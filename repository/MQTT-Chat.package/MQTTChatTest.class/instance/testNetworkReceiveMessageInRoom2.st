tests
testNetworkReceiveMessageInRoom2
	| aliceRoom aliceMessage |
	alice connect.
	aliceRoom := alice roomId: self roomOneId.
	alice listen. 
	aliceRoom announcer 
		when: MQTTChatMessageSentAnnouncement, MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	alice announcer 
		when: MQTTChatMessageSentAnnouncement, MQTTChatMessageReceivedAnnouncement do: announcementBlock.
	aliceMessage := alice sendTextMessage: self messageStringOne toRoomId: self roomOneId.
	self assertSemaphore: 2.
	self assert: aliceRoom messages size equals: 1.
	self assert: aliceRoom messages first == aliceMessage.
	self assert: aliceRoom messages first text equals: self messageStringOne.
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatMessageSentAnnouncement.
	self assert: results second class equals: MQTTChatMessageSentAnnouncement.
	