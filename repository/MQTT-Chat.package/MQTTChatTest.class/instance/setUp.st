running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.
	announcementBlock := [ :ann | self addToResultsAndSignal: ann ].
	prefix := 9999 atRandom asString.
	alice := self newChat.
	alice username: 'Alice ', prefix.
	alice clientId: 'Alice ', prefix.
	alice prefix: prefix.
	pedro := self newChat.
	pedro username: 'Pedro ', prefix.
	pedro clientId: 'Pedro ', prefix.
	pedro prefix: prefix.
