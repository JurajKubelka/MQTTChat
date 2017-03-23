public
sendData: aByteArray 
	| bytes |
	bytes := self messages add: aByteArray.
	self announce: (MQTTChatMessageSendingAnnouncement new message: bytes; room: self; yourself).
	self chat networkSendMessage: bytes toRoom: self.
	^ bytes