tests
testBefore3
	timeRange before: self to.
	self assert: (timeRange includes: self between)
	