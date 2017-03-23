accessing
messages
	^ messages ifNil: [ messages := self newCollection ]