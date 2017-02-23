accessing
username: aString 
	self user username: aString asString.
	self clientId: aString asString, ' (', 999 atRandom asString, ')' 