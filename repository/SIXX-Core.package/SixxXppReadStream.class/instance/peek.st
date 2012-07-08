accessing
peek
	| next |
	self atEnd ifTrue: [ ^ nil ].
	next := self next.
	self skip: -1.
	^ next