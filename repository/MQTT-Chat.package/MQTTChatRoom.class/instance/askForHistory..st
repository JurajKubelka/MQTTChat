public
askForHistory: timeRange
	| request |
	request := MQTTChatRequest new
		author: self author;
		id: self newId;
		request: timeRange;
		yourself.
	self chat networkSendRequest: request inRoom: self.
	^ timeRange