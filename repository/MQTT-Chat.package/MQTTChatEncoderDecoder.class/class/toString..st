instance creation
toString: object 
	^ String streamContents: [ :stream |
		(STON writer on: stream)
			nextPut: object ]