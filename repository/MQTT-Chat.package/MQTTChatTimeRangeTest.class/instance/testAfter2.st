tests
testAfter2
	timeRange after: self from.
	self assert: (timeRange includes: self to)
	