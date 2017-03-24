announce
announce: announcement
	announcer ifNil: [ ^ self ].
	self announcer announce: announcement