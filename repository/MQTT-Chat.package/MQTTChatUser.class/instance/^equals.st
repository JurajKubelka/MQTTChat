comparing
= anObject
	^ self class = anObject class and: [ 
		self name = anObject name and: [ self id = anObject id ] ]