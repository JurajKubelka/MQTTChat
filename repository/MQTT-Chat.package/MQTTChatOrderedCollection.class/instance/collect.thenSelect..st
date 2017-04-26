enumerating
collect: collectBlock thenSelect: selectBlock
	"Utility method to improve readability."
	^ mutex critical: [ collection collect: collectBlock thenSelect: selectBlock ]