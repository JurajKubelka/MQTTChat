tests
testBefore
	timeRange before: self to.
	self assert: (timeRange includes: self before)
	