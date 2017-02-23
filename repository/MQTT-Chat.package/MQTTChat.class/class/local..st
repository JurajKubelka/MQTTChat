instance creation
local: userNameString
	<script: '(self local: #Alice) inspect'>
	^ self new
		host: NetNameResolver loopBackName;
		port: 1883;
		username: userNameString asString;
		clientId: userNameString asString, ' #', 999 atRandom asString;
		connect;
		listen;
		yourself.