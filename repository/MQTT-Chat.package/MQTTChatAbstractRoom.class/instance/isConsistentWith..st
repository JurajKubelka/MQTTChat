testing
isConsistentWith: aMQTTChatSimpleRoom 
	"Answer true if those two rooms are compatible and can share and store same messages."
	^ self class = aMQTTChatSimpleRoom class