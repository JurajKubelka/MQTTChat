tests
testAll4
	timeRange all.
	self assert: (timeRange includes: self from)
	