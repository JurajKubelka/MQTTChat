tests
testAll3
	timeRange all.
	self assert: (timeRange includes: self between)
	