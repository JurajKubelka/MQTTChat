gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 0>  
	^ composite fastTable 
		title: [ :chat | 'Rooms' ];
		display: [ self rooms ];
		updateOn: MQTTChatSubscribedToRoomAnnoncement from: [ :chat | chat announcer ];
		updateOn: MQTTChatMessageSendingAnnouncement from: [ :chat | chat announcer ];
		updateOn: MQTTChatMessageReceivedAnnouncement from: [ :chat | chat announcer ];
		updateOn: MQTTChatHistoryReceivedAnnouncement from: [ :chat | chat announcer ];
		column: 'Id' evaluated: [ :room | room id ] width: 50;
		column: '# Messages' evaluated: [ :room | room size ] width: 70;
		column: 'Last At' evaluated: [ :room | room latest ifNotNil: #datetime ifNil: '' ] width: 50;
		yourself