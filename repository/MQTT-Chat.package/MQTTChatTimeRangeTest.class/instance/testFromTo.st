tests
testFromTo
	timeRange from: self from; to: self to.
	self deny: (timeRange includes: self after)
	