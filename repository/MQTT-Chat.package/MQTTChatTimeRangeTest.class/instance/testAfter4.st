tests
testAfter4
	timeRange after: self from.
	self deny: (timeRange includes: self before)
	