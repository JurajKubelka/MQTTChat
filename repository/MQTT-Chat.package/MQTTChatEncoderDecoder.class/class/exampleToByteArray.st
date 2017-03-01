examples
exampleToByteArray
	<gtExample>
	<label: 'Serialize an array'>
	^ MQTTChatEncoderDecoder toByteArray: { 'string' . 42 }.