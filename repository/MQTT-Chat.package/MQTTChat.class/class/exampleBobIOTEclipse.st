examples
exampleBobIOTEclipse
	<script: 'self exampleBobIOTEclipse inspect'>
	<gtExample>
	<label: 'Bob joins Alice and Pedro. It uses a IoT Eclipse MQTT server.'>
	| bob bobUI |

	"Let's connect to a local MQTT server."
	bob := MQTTChat iotEclipse: 'Bob'.

	"Let's open UI windows."
	bobUI := bob open.
	bobUI onAnnouncement: WindowClosed do: [ bob disconnect ].

	"Let's register to room called #random."
	bob roomId: #random.
	bob roomId: #development.
	
	"Let's send messages."
	bob sendTextMessage: 'Hi! I am Bob :-)' toRoomId: #random.
	self inform: 'You can send messages from the UI using CMD+S shortcut.'.
	^ { bob. bobUI }
