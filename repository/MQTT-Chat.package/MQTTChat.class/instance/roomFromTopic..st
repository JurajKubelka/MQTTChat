accessing
roomFromTopic: topicString 
	"Return existing room with a given id decoded from topicString or nil if such room does not exist."
	| roomId |
	roomId := topicString allButFirst: self prefix size.
	^ self roomWithId: roomId