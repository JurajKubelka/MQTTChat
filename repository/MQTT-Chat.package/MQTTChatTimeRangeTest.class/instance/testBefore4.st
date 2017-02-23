tests
testBefore4
	timeRange before: self to.
	self deny: (timeRange includes: self after)
	