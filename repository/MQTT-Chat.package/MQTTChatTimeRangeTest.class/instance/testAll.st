tests
testAll
	timeRange all.
	self assert: (timeRange includes: self before)
	