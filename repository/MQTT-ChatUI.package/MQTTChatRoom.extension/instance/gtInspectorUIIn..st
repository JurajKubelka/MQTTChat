*MQTT-ChatUI
gtInspectorUIIn: composite
	<gtInspectorPresentationOrder: -1>  
	^ (composite custom: MQTTChatRoomPresentation new)
			act: [ :presentation :room | MQTTChatRoomPresentation openOn: room ] 
				iconName: #glamorousOpen 
				entitled: 'Open in Separate Window';
			yourself