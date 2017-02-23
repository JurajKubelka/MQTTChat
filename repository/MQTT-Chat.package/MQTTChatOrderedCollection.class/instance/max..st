accessing
max: aBlock 
	^ mutex critical: [ collection max: aBlock ]