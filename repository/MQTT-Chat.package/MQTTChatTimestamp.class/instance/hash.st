comparing
hash
	^ (self class hash bitXor: self id hash) 
			bitXor: self timestamp hash