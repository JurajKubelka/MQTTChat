convenience
idsFrom: collectionOfMessages excluding: collectionOfIds
	"Set ids from the collection of chat messages, excluding collectionOfIds."
	self ids: ((collectionOfMessages collect: #id thenSelect: [ :eachId | (collectionOfIds includes: eachId) not ]) as: Array)