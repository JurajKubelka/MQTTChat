comparing
hash
	^ (self class hash bitXor: self name hash) bitXor: self id hash