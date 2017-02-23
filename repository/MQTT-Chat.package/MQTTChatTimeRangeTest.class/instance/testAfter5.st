tests
testAfter5
	timeRange after: self from.
	self deny: (timeRange includes: self from)
	