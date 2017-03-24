building
composeMessage: message forRoom: room
	^ message isCollection 
		ifTrue: [ "byte array"
			message printString asStringMorph ]
 		ifFalse: [ "MQTTChatMessage"
			(Smalltalk ui theme newColumnIn: World for: { 
					message username asString asStringMorph emphasis: 1; yourself. 
					message text asString asStringMorph})
						cellInset: 0; 
						hResizing: #shrinkWrap;
						vResizing: #shrinkWrap;
						yourself ]