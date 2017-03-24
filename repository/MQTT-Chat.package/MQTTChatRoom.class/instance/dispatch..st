network - dispatching
dispatch: aMQTTPublish 
	| message |
	message := MQTTChatEncoderDecoder fromByteArray: aMQTTPublish contents.
	^ message dispatchBy: self.