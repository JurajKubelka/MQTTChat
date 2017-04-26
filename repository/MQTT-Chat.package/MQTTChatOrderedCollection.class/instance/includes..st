testing
includes: anObject 
	"Answer whether anObject is one of the receiver's elements."
	^ mutex critical: [ collection includes: anObject ]