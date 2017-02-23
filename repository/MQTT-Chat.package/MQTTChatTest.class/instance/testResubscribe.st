tests
testResubscribe
	alice announcer when: MQTTChatConnectedAnnouncement do: announcementBlock.
	self connectAliceAndPedro.
	self assertSemaphore: 1.
	alice announcer when: MQTTChatSubscribedToRoomAnnoncement do: announcementBlock.
	alice roomId: self roomOneId.
	alice roomId: self roomTwoId.
	self assertSemaphore: 2.
	alice mqttClient basicCloseSocket.
	alice listen. "we expects reconnection here"
	self assertSemaphore: 3.
	self assert: alice mqttClient subscriptions size equals: 2.
	self 
		assert: (results collect: #class as: Array)
		equals: { 
			MQTTChatConnectedAnnouncement. 
			MQTTChatSubscribedToRoomAnnoncement. MQTTChatSubscribedToRoomAnnoncement.
			MQTTChatConnectedAnnouncement. 
			MQTTChatSubscribedToRoomAnnoncement. MQTTChatSubscribedToRoomAnnoncement. } 