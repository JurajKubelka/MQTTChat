initialize-release
connect
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