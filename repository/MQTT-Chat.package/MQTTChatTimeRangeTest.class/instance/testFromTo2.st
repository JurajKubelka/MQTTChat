tests
testFromTo2
	timeRange from: self from; to: self to.
	self deny: (timeRange includes: self before)
	