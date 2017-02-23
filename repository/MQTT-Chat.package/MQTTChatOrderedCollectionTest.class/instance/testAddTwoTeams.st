tests
testAddTwoTeams
	"There should be just two teams"
	rooms add: roomOne.
	result := rooms add: roomTwo.
	self assert: result == roomTwo.
	self assert: rooms size equals: 2.