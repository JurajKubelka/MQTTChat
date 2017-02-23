tests
testOpen
	| window |
	window := alice open.
	self assert: window notNil.
	window delete.