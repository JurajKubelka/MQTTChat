public
askForLatestMessages
	| timeRange datetime |
	datetime := self chat disconnected.
	timeRange := datetime 
		ifNil: [ MQTTChatTimeRange new all; yourself ] 
		ifNotNil: [ MQTTChatTimeRange new after: datetime - 1 minute; yourself ].
	self askForHistory: timeRange