*MQTT-ChatUI
gtInspectorUIIn: composite
	<gtInspectorPresentationOrder: -1>  
	^ (composite custom: MQTTChatPresentation new)
			act: [ :chat | chat open ] iconName: #glamorousOpen entitled: 'Open in Separate Window';
			yourself