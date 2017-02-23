tests
testAll2
	timeRange all.
	self assert: (timeRange includes: self to)
	