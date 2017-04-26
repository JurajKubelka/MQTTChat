initialize-release
connect
	"It sets reconnection command and then connect the client.
	On any connection lost, it will try to reconnect."
	self mqttClient 
		reopen: [ 
			self announce: MQTTChatConnectedAnnouncement ] 
		error: [ :exception | 
			self disconnectedNow. 
			self announce: (MQTTChatCannotConnectAnnouncement new 
						exception: exception; yourself) ]
		suspend: [ :duration :time :command | 
			duration > 0 seconds 
				ifTrue: [ self announce: (MQTTChatConnectionPostponedAnnouncement new 
					duration: duration; time: time; command: command; yourself) ]
				ifFalse: [ self announce: MQTTChatConnectingAnnouncement ]
		].
	self announce: MQTTChatConnectingAnnouncement.
	self mqttClient
		open: [ self announce: MQTTChatConnectedAnnouncement ]
		error: [ :exception | 
			self disconnectedNow. 
			self announce: (MQTTChatCannotConnectAnnouncement new 
						exception: exception; yourself) ]