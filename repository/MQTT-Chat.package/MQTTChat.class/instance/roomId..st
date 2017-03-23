public
roomId: aString
	^ self room: (self newRoom
			id: aString;
			chat: self;
			yourself)