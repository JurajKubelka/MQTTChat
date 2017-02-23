instance creation
pharo: userNameString
	<script: '(self pharo: #Alice) inspect'>
	^ self new
		host: self gcHostName;
		port: 1883;
		username: userNameString asString;
		clientId: userNameString asString, ' #', 999 atRandom asString;
		connect;
		listen;
		yourself.