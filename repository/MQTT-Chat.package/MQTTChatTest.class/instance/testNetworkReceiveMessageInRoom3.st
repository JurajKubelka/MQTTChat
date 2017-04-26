tests
testNetworkReceiveMessageInRoom3
	"Case https://github.com/JurajKubelka/MQTTChat/issues/2
	Check the following scenario:
	1. client one, connect, send message one, and disconnect,
	2. client two, connect, send message two,
	3. client one, connect
	4. check that both clients have cases one and two in proposed"
	| aliceRoom aliceMessage pedroRoom pedroMessage receivedAnnouncements expectedAnnouncements |
	"Step one"
	alice announcer 
		when: MQTTChatConnectedAnnouncement do: announcementBlock;
		when: MQTTChatHistoryReceivedAnnouncement do: announcementBlock;
		when: MQTTChatMessageSentAnnouncement do: announcementBlock;
		when: MQTTChatConnectionClosedAnnouncement do: announcementBlock.
	pedro announcer 
		when: MQTTChatConnectedAnnouncement do: announcementBlock;
		when: MQTTChatHistoryReceivedAnnouncement do: announcementBlock;
		when: MQTTChatMessageSentAnnouncement do: announcementBlock;
		when: MQTTChatConnectionClosedAnnouncement do: announcementBlock.

	alice connect; listen.
	aliceMessage := alice sendTextMessage: self messageStringOne toRoomId: self roomOneId.
	self assertSemaphore: 2.
	alice disconnect.
	self assertSemaphore: 1.
	"Step two"
	pedro connect; listen.
	pedroMessage := pedro sendTextMessage: self messageStringTwo toRoomId: self roomOneId.
	self assertSemaphore: 2.
	"Step three"
	alice connect.
	self assertSemaphore: 5.
	"Step four"
	aliceRoom := alice roomId: self roomOneId.
	pedroRoom := pedro roomId: self roomOneId.
	self assert: pedroRoom messages size equals: 2.
	self assert: aliceRoom messages size equals: 2.
	self assert: pedroRoom messages first equals: aliceMessage.
	self assert: pedroRoom messages second equals: pedroMessage.
	self assert: aliceRoom messages first equals: aliceMessage.
	self assert: aliceRoom messages second equals: pedroMessage.
	self assert: aliceRoom messages first text equals: self messageStringOne.
	self assert: aliceRoom messages second text equals: self messageStringTwo.
	self assert: pedroRoom messages first text equals: self messageStringOne.
	self assert: pedroRoom messages second text equals: self messageStringTwo.
	self assert: results size equals: 10.
	receivedAnnouncements := results collect: #class as: Array.
	expectedAnnouncements := {
		"first step" MQTTChatConnectedAnnouncement. MQTTChatMessageSentAnnouncement. MQTTChatConnectionClosedAnnouncement. 
		"second step" MQTTChatConnectedAnnouncement. MQTTChatMessageSentAnnouncement. 
		"third step" MQTTChatConnectedAnnouncement. MQTTChatHistoryReceivedAnnouncement. MQTTChatHistoryReceivedAnnouncement. 
			MQTTChatHistoryReceivedAnnouncement. MQTTChatHistoryReceivedAnnouncement}.
	self assert: receivedAnnouncements equals: expectedAnnouncements.
