gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 0>  
	^ composite fastList 
		title: [ :room | 'Messages' ];
		display: [ self messages ];
		updateOn: MQTTChatMessageSendingAnnouncement from: [ :room | room announcer ];
		updateOn: MQTTChatMessageReceivedAnnouncement from: [ :room | room announcer ];
		updateOn: MQTTChatHistoryReceivedAnnouncement from: [ :room | room announcer ];
		yourself