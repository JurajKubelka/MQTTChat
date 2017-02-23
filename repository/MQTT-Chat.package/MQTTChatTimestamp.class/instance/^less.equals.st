comparing
<= anObject
	^ self class = anObject class and: [ 
		self = anObject or: [ 
			self timestamp = anObject timestamp 
				ifTrue: [ self id <= anObject id ]
				ifFalse: [ self timestamp <= anObject timestamp ] ] ]