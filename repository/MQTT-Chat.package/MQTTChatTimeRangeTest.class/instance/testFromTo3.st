tests
testFromTo3
	timeRange from: self from; to: self to.
	self assert: (timeRange includes: self between)
	