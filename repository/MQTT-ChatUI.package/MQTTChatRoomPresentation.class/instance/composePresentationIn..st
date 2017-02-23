building
composePresentationIn: browser
	^ browser tabulator
		row: #list; row: #input span: 0.25;
		with: [ :tabulator |
			tabulator transmit to: #list; andShow: [ :composite |
				 composite fastList 
					display: [ :room | room messages ];
					rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
					format: [ :message :room | self composeMessage: message forRoom: room ];
					updateOn: MQTTChatMessageSendingAnnouncement from: [ :room | room announcer ];
					updateOn: MQTTChatMessageReceivedAnnouncement from: [ :room | room announcer ];
					updateOn: MQTTChatHistoryReceivedAnnouncement from: [ :room | room announcer ];
					yourself ] ];
		with: [ :tabulator |
			tabulator transmit to: #input; andShow: [ :composite |
				composite text
					display: [ :room | '' ];
					withGhostText: 'Send message by pressing ', OSPlatform current defaultModifier name asUppercase, '+S';
					populate: #newMessage on: $s with: [ :presentation :room | 
						room sendTextMessage: presentation text.
						presentation text: ''; update. ] ] ];
		yourself