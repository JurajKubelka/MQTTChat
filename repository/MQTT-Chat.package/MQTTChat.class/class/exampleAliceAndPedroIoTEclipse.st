examples
exampleAliceAndPedroIoTEclipse
	<script: 'self exampleAliceAndPedroIoTEclipse inspect'>
	<gtExample>
	<label: 'Alice and Pedro can chat. It uses a IoT Eclipse MQTT server.'>
	| alice pedro aliceUI pedroUI aliceRoom pedroRoom |

	"Let's connect to a local MQTT server."
	alice := MQTTChat iotEclipse: 'Alice'.
	pedro := MQTTChat iotEclipse: 'Pedro'.

	"Let's open UI windows."
	aliceUI := alice open.
	pedroUI := pedro open.
	aliceUI onAnnouncement: WindowClosed do: [ alice disconnect ].
	pedroUI onAnnouncement: WindowClosed do: [ pedro disconnect ].

	"Let's register to room called #random."
	aliceRoom := alice roomId: #random.
	pedroRoom := pedro roomId: #random.
	alice roomId: #development.
	pedro roomId: #development.
	
	"Let's send messages."
	alice sendTextMessage: 'Hi' toRoomId: #random.
	pedro sendTextMessage: 'Hello' toRoomId: #random.
	aliceRoom sendTextMessage: 'How are you?'.
	pedroRoom sendTextMessage: 'I am fine :-) And you?'.
	self inform: 'You can send messages from the UI using CMD+S shortcut.'.
	^ { alice. pedro. aliceUI. pedroUI. }
