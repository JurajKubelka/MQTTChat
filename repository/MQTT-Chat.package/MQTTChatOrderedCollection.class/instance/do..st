enumerating
do: oneArgBlock
	^ mutex critical: [ collection do: oneArgBlock ]