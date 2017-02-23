instance creation
newChat
	^ MQTTChat new
		host: NetNameResolver loopBackName;
		port: 1883;
		yourself.