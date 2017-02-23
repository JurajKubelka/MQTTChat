comparing
<= object 
	^ self class = object class and: [ 
		self = object or: [ self id <= object id ] ]