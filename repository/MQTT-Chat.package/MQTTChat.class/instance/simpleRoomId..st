public
simpleRoomId: aString
	^ self room: (self newSimpleRoom
			id: aString;
			chat: self;
			yourself)