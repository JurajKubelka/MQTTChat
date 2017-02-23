enumerating
detectMax: block 
	^ mutex critical: [ collection detectMax: block ]