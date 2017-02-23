tests
testAfter
	timeRange after: self from.
	self assert: (timeRange includes: self after)
	