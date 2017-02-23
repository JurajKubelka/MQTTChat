tests
testFromTo4
	timeRange from: self from; to: self to.
	self deny: (timeRange includes: self from)
	