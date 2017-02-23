building
composePresentationIn: browser
	browser tabulator 
		column: #rooms; column: #room span: 4;
		with: [ :tabulator |
			tabulator transmit to: #rooms; andShow: [ :composite |
				composite fastList 
					display: [ :chat | chat rooms ];
					updateOn: MQTTChatSubscribedToRoomAnnoncement from: [ :chat | chat announcer ];
					format: [ :room | room id ] ] ];
		with: [ :tabulator |
			tabulator transmit to: #room; from: #rooms; andShow: [ :composite |
				composite 
					custom: (MQTTChatRoomPresentation new
						title: nil;
						yourself) ] ];
		with: [ :tabulator | 
			"initial display instead of message list"
			tabulator transmit to: #room; andShow: [ :composite | 
			composite text display: [ :chat | 'Select a room'  ] ] ];
		yourself