input/output
log: anObject
	self mqttClient 
		ifNil: [ self crLog: anObject ]
		ifNotNil: [ mqttClient log: anObject ]