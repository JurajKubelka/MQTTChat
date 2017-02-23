tests
testAddTwiceSameInstance
	"There should be just one room"
	rooms add: roomOne.
	result := rooms add: roomOne.
	self assert: result == roomOne.
	self assert: rooms size equals: 1.