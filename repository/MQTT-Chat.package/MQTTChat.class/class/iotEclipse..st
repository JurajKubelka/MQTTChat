instance creation
iotEclipse: userNameString
	<script: '(self iotEclipse: #Alice) inspect'>
	^ self new
		host: self iotEclipseHostName;
		port: 1883;
		username: userNameString asString;
		clientId: userNameString asString, ' #', 999 atRandom asString;
		connect;
		listen;
		yourself.