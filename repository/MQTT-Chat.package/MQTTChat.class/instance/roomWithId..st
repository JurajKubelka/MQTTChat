accessing
roomWithId: idString 
	"Return a room of a given id, nil otherwise."
	^ self rooms detect: [ :room | room id = idString ] ifNone: nil