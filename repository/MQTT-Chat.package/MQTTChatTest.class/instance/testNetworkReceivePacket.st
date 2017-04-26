tests
testNetworkReceivePacket
	"Ensure that invalid packets are ignored."
	| aliceRoom |
	aliceRoom := alice roomId: self roomOneId.
	alice networkReceivePacket: (self newPublish topic: (alice roomTopic: aliceRoom); message: self bytes; yourself).
	self assert: results size equals: 2.
	self assert: results first class equals: MQTTChatMessageReceivedAnnouncement.
	self assert: results second class equals: MQTTChatMessageReceivedAnnouncement.
	