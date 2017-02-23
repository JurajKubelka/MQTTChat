tests
testBefore6
	timeRange before: self to.
	self assert: (timeRange includes: self from)
	