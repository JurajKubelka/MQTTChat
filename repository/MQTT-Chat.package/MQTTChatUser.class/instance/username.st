accessing
username
	^ username ifNil: [ username := 'annonymous ', 999 atRandom asString ]