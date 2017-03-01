tests
testReceiveMessage
	| message receivedMessage |
	room announcer 
		when: MQTTChatMessageSendingAnnouncement, MQTTChatMessageReceivedAnnouncement
		do: [ :ann | results add: ann ]. 
	message := room sendTextMessage: self text.
	receivedMessage := MQTTChatEncoderDecoder fromByteArray: (MQTTChatEncoderDecoder toByteArray: message).
	room receiveMessage: receivedMessage.
	self assert: room messages size equals: 1.
	self assert: room messages first == message.
	self assert: receivedMessage equals: message.
	self assert: results size equals: 3.
	self assert: results first class equals: MQTTChatMessageSendingAnnouncement.
	self assert: results second == room.
	self assert: results third == message.
