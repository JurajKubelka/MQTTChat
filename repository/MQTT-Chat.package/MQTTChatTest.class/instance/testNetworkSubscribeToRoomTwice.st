tests
testNetworkSubscribeToRoomTwice
	| room |
	alice announcer when: MQTTChatConnectedAnnouncement do: announcementBlock.
	self connectAliceAndPedro.
	self assertSemaphore: 1.
	alice announcer when: MQTTChatSubscribedToRoomAnnoncement do: announcementBlock.
	alice roomId: self roomOneId.
	self assertSemaphore: 1.
	room := alice roomId: self roomOneId.
	self denySemaphore.
	self assert: results first class equals: MQTTChatConnectedAnnouncement.
	self assert: results second room id equals: self roomOneId.
	self assert: alice mqttClient subscriptions size equals: 1.
	self assert: alice mqttClient subscriptions first equals: (alice roomTopic: room).