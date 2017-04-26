as yet unclassified
second
	"Answer the second element of the receiver.
	Raise an error if there are not enough elements."
	^ mutex critical: [ collection second ]