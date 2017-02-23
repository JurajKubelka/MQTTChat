testing
includes: aDateAndTime 
	^ (self from isNil or: [ self from < aDateAndTime ]) and: [ self to isNil or: [ aDateAndTime < self to ] ]