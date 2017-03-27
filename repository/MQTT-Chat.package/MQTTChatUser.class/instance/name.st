accessing
name
	^ name ifNil: [ name := 'annonymous ', 999 atRandom asString ]