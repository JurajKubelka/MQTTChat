I am a facade class for STON reader and writer. I am used for serializing and materializing objects that are sent/received to/from a MQTT broker. 

Public API and Key Messages

- toByteArray: 
- fromByteArray:

[[[
	MQTTChatEncoderDecoder toByteArray: { 'string' . 42 }.
	MQTTChatEncoderDecoder fromByteArray: #[91 39 115 116 114 105 110 103 39 44 52 50 93].
]]] 
