initialize-release
disconnect
	self mqttClient 
		close: [ 
			self disconnectedNow. 
			self announce: MQTTChatConnectionClosedAnnouncement ] 
		error: [ :exception | 
			self disconnectedNow. 
			self announce: (MQTTChatCannotCloseConnectionAnnouncement new 
				exception: exception; yourself) ]