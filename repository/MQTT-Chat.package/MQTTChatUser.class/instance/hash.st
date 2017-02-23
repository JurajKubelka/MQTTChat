comparing
hash
	^ (self class hash bitXor: self username hash) bitXor: self id hash