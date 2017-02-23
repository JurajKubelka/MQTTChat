accessing
at: index
	^ mutex critical: [ collection at: index ]