reading
position: anInteger 
	(anInteger < 0
			and: [anInteger > limit])
		ifTrue: [self error: 'out of bounds'].
	self reset.
	self next: anInteger