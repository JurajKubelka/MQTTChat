events
announce: anAnnouncement
	^ (anAnnouncement isKindOf: MQTTChatAnnouncement)
		ifTrue: [ results add: anAnnouncement ]
		ifFalse: [ super announce: anAnnouncement ]