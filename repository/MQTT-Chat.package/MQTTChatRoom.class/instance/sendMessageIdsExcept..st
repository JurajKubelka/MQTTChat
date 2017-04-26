public
sendMessageIdsExcept: aCollectionOfIds
	"Send all message ids that are kept in the room, but not present in aCollectionOfIds.
	Useful for message syncronization."
	| ids request |
	ids := MQTTChatMessageIds new
		idsFrom: self messages excluding: aCollectionOfIds;
		yourself.
	request := MQTTChatRequest new
		author: self author;
		id: self newId;
		request: ids;
		yourself.
	self chat networkSendRequest: request inRoom: self.
	^ ids