tests
testBefore5
	timeRange before: self to.
	self deny: (timeRange includes: self to)
	