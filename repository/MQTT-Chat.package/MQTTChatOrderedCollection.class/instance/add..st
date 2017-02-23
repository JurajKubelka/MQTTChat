adding
add: newRoom 
	"Returns an existing room or adds the one."
	^ mutex critical: [ collection 
		detect: [ :eachItem | eachItem = newRoom ]
		ifFound: [ :item | item ]
		ifNone: [ collection add: newRoom ] ]