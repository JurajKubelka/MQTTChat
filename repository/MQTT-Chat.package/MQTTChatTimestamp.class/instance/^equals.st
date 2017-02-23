comparing
= anObject
	^ self class = anObject class and: [ 
		self id = anObject id and: [ 
			self timestamp = anObject timestamp ] ]