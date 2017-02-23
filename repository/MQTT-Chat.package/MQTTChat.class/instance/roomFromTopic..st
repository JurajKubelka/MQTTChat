accessing
roomFromTopic: topicString 
	| roomId |
	roomId := topicString allButFirst: self prefix size.
	^ self roomId: roomId