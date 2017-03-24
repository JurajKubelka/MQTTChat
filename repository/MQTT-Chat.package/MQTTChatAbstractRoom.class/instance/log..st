input/output
log: anObject
	self chat 
		ifNil: [ self crLog: anObject ]
		ifNotNil: [ self chat log: anObject ]