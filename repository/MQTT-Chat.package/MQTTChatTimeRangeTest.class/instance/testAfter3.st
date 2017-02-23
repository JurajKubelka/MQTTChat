tests
testAfter3
	timeRange after: self from.
	self assert: (timeRange includes: self between)
	