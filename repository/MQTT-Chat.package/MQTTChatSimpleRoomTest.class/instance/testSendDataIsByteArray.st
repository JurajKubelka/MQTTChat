tests
testSendDataIsByteArray
	self testSendData.
	self assert: results third equals: self data.