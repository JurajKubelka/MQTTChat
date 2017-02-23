tests
testAuthor
	| message |
	message := self messageOne author: self authorOne; yourself.
	self assert: message author equals: self authorOne.