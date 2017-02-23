tests
testAdd
	"When we add a room for the first time. It should return the same object."
	result := rooms add: roomOne.
	self assert: result == roomOne.
	self assert: rooms size equals: 1.