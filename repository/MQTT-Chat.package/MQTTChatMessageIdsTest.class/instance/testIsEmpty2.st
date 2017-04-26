tests
testIsEmpty2
	messages := self newMessageIds.
	messages ids: { self newTimestampOneOne. self newTimestampTwoOne }.
	self deny: messages isEmpty