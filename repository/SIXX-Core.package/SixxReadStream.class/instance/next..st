reading
next: anInteger 
	| ord |
	anInteger < 0 ifTrue: [^nil].
	ord := OrderedCollection new: anInteger.
	anInteger
		timesRepeat: [self atEnd
				ifFalse: [ord add: self next]].
	^ ord