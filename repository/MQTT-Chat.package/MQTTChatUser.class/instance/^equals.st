comparing
= anObject
	^ self class = anObject class and: [ 
		self username = anObject username and: [ self id = anObject id ] ]