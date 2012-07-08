accessing
next: anInteger 
	| results |
	results := OrderedCollection new: anInteger.
	anInteger timesRepeat: 
		[ self atEnd ifTrue: [ ^ results ].
		results add: self next ].
	^ results