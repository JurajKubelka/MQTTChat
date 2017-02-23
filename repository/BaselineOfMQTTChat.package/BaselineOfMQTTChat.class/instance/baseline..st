baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'MQTTCallbackClient' with: [
				spec
					repository: 'github://JurajKubelka/MQTTCallbackClient/repository';
					loads: 'default' ];
			package: #'MQTT-Chat' with: [
				spec requires: #( 'MQTTCallbackClient' ). ];
			package: #'MQTT-ChatUI' with: [
				spec requires: #(#'MQTT-Chat' ). ];
			group: 'default' with: #( lib ui );
			group: 'lib' with: #(#'MQTT-Chat' );
			group: 'ui' with: #(#'MQTT-ChatUI' ).
	].