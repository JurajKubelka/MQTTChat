accessing
latestDateAndTime
	"Return date and time of the latest message"
	^ self latest ifNotNil: #datetime ifNil: ''