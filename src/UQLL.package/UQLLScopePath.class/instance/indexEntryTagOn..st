as yet unclassified
indexEntryTagOn: anUQLLBlocksCollection
	^ self size > 1
		ifTrue: [ '.' join: ((2 to: self size) collect: [ :i | self at: i ]) ]
		ifFalse: [ '' ]