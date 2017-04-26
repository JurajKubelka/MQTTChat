tests
testIds
	messages := self newMessageIds.
	messages ids: { self newTimestampOneOne. self newTimestampTwoOne }.
	self assert: messages ids equals: { self newTimestampOneOne. self newTimestampTwoOne }