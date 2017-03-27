accessing
mqttId
	^ String streamContents: [ :aStream |
		aStream 
			<< self name
			<< ' ('
			<< self id
			<< $) ]