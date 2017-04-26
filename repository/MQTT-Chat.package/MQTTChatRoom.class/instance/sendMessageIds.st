public
sendMessageIds
	"Send all message ids that are kept in the room.
	Useful for message syncronization."
	^ self sendMessageIdsExcept: #()