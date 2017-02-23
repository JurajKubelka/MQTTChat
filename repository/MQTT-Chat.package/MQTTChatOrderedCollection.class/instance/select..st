enumerating
select: block
	^ mutex critical: [ collection select: block ]