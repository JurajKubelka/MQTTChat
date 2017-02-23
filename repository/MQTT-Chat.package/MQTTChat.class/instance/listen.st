initialize-release
listen
	alreadyListening ifTrue: [ ^ self ].
	self mqttClient 
		runWith: [ :packet | packet isApplicationMessage ]
		response: [ :packet | self networkReceivePacket: packet ]
		error: [ :exception :client :command | 
			self disconnectedNow.
			self log: 'Error while receiving message: ', exception printString.
			command hold ].
	alreadyListening := true.
