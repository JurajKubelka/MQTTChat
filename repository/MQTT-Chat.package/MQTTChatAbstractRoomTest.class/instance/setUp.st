running
setUp
	super setUp.
	results := OrderedCollection new.
	room := self newRoom
		id: self roomOneId;
		chat: self;
		yourself