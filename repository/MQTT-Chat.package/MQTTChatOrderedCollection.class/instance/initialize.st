initialization
initialize
	super initialize.
	collection := self newCollection.
	mutex := Mutex new.