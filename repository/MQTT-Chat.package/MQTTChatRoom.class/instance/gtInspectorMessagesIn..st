gt-inspector-extension
gtInspectorMessagesIn: composite
	^ composite fastTable 
		title: [ :room | 'Messages' ];
		display: [ self messages ];
		updateOn: MQTTChatMessageSendingAnnouncement from: [ :room | room announcer ];
		updateOn: MQTTChatMessageReceivedAnnouncement from: [ :room | room announcer ];
		updateOn: MQTTChatHistoryReceivedAnnouncement from: [ :room | room announcer ];
		column: 'Author' evaluated: [ :message | message username ] width: 50;
		column: 'Text' evaluated: [ :message | message text ] width: 100;
		yourself