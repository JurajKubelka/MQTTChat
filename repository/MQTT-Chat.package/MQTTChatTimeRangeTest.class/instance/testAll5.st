tests
testAll5
	timeRange all.
	self assert: (timeRange includes: self after)
	