registry
transformObjectIntoIndexEntry: anObject
	^ (anObject at: #transactions)
		flatCollect: [ :t | 
			{(t at: #from).
			(t at: #to)} select: [ :a | self isContract: a ] thenCollect: [ :a | a asBKNumber -> (t at: #hash) asBKNumber ] ]