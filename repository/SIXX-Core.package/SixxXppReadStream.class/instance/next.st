accessing
next
	| object |
	(cachedObjects includesKey: position + 1) ifTrue: 
		[ position := position + 1.
		^ cachedObjects at: position ].
	self atEnd ifTrue: [ ^ nil ].
	parser matchAnyPeek: 
		[ object := self nextSixxObject ].
	position := position + 1.
	cachedObjects 
		at: position
		put: object.
	^ object