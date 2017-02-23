initialize-release
resubscribe
	self rooms do: [ :eachRoom |
		self networkSubscribeToRoom: eachRoom ].
	self rooms do: [ :eachRoom |
		eachRoom askForLatestMessages ]