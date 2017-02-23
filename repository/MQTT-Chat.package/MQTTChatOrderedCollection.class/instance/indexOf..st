accessing
indexOf: anElement 
	^ mutex critical: [ collection indexOf: anElement ]