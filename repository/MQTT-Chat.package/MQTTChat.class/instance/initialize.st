initialization
initialize
	super initialize.
	alreadyListening := false.
	announcer := Announcer new.
	(announcer when: MQTTChatConnectedAnnouncement send: #resubscribe to: self)
		subscriber: self.