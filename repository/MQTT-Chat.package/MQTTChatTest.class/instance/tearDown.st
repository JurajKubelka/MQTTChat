running
tearDown
	alice ifNotNil: #disconnect.
	pedro ifNotNil: #disconnect.
	super tearDown.