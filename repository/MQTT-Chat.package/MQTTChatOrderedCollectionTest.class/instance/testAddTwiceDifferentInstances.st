tests
testAddTwiceDifferentInstances
	"There should be just one room"
	rooms add: roomOne.
	result := rooms add: roomOneCopy.
	self assert: result == roomOne.
	self assert: rooms size equals: 1.