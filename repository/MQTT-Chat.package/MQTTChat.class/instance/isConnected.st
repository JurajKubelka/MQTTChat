testing
isConnected
	^ self mqttClient 
		ifNotNil: [ :client | client isConnected ]
		ifNil: false